<?php

require_once "connection.php";

// Used to create all the stored stored_procedures names dymamicaly
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");

header('Content-Type: application/json; charset=utf-8');

$type = ['create', 'update', 'delete', 'select'];
$tables = ['user', 'product', 'review', 'shopping_session', 'user_address', 'user_payment', 'supplier_payment', 'supplier_address', 'supplier', 'payment_details', 'cart_item', 'order_items', 'order_details', 'product_category', 'product_iventory'];

$stored_procedures = [];

for ($i=0; $i < count($type); $i++) { 
  $stored_procedures[$type[$i]] = [];
}

for ($i=0; $i < count($type); $i++) { 

  for ($j=0; $j < count($tables); $j++) { 
  $name = 'SP_'.$type[$i];
   $name = $name.'_'.$tables[$j];
  $stored_procedures[$type[$i]][$tables[$j]] = $name;
  }
}

// print_pretty($stored_procedures);

function sp_query_generator($type, $table, $data){
    $data_array = explode(',', $data);
    global $stored_procedures;

    // $query = "INSERT INTO $table ($table_insert_params[$table]) VALUE (";
    $query = "CALL {$stored_procedures[$type][$table]} (";

    for($i = 0; $i < count($data_array); $i++){
        if($i < count($data_array) - 1) {
          if(is_numeric($data_array[$i])){
            $query = $query . "$data_array[$i],";
          }else{
            $query = $query . "'$data_array[$i]',";
          }
        }else{
          if(is_numeric($data_array[$i])){
            $query = $query . "$data_array[$i])";
          }else{
            $query = $query . "'$data_array[$i]')";
          }
        }
    }
    return $query;

}

function fn_query_generator($functionName, $data){
    $data_array = explode(',', $data);
    // $query = "INSERT INTO $table ($table_insert_params[$table]) VALUE (";
    $query = "SELECT ${functionName}(";

    for($i = 0; $i < count($data_array); $i++){
        if($i < count($data_array) - 1) {
          if(is_numeric($data_array[$i])){
            $query = $query . "$data_array[$i],";
          }else{
            $query = $query . "'$data_array[$i]',";
          }
        }else{
          if(is_numeric($data_array[$i])){
            $query = $query . "$data_array[$i])";
          }else{
            $query = $query . "'$data_array[$i]')";
          }
        }
    }
    return $query;

   
}

// echo(query_generator('create', 'user', -1));

/* function insert_query_generator($table, $data)
{
    $data_array = explode(',', $data);
    global $table_insert_params;

    $query = "INSERT INTO $table ($table_insert_params[$table]) VALUE (";

    for($i = 0; $i < count($data_array); $i++){
        if($i < count($data_array) - 1) {
            $query = $query . "'$data_array[$i]',";
        }else{
            $query = $query . "'$data_array[$i]')";
        }
    }
    return $query;
} */

function update_query_generator($table, $data)
{
    $data_array = explode(',', $data);
    global $table_insert_params;
    global $table_id_name;

    $params_array = explode(',', $table_insert_params[$table]);

    $query = "UPDATE $table SET ";
    for($i = 0; $i < count($params_array); $i++){
        $data_index = $i + 1;
        if($i < count($params_array) - 1) {
            $query = $query . "$params_array[$i] = '$data_array[$data_index]', ";
        }else{
            $query = $query . "$params_array[$i] = '$data_array[$data_index]'";
        }
    }
    $query = $query . " WHERE $table_id_name[$table] = $data_array[0]";
    return $query;
}

function select_query_generator($table, $id = -1)
{
    global $table_id_name;

    if($id < 0) {
        $query = "SELECT * FROM $table";
    }

    $query = "SELECT * FROM $table WHERE $table_id_name[$table] = $id";

    return $query;
}

function delete_query_generator($table, $id = -1)
{
    global $table_id_name;

    $query = "";

    if($id >= 0) {
        $query = "DELETE FROM $table WHERE $table_id_name[$table] = $id";
    }

    return $query;
}

function check_response($result){
    $json_data = [];
    global $conn;

    if($result) {
        // echo "Successful Query";
        $json_data["Response"] = "Success";
    }else{
        $json_data["Response"] = "Fail";
        $json_data["Error"] = mysqli_error($conn);
    }
    mysqli_close($conn);
    // echo "\n";
    return $json_data;
}

function print_pretty($array){
  echo "<pre>";
  print_r($array);
  echo "</pre>";
}

function check_key_exists(){
  // print_pretty($_REQUEST)
  $error = Errors::NO_ERROR;

  if(!array_key_exists('table', $_REQUEST)) { 
    $error = Errors::NO_TABLE;
  }
  printError($error);

  if(!array_key_exists('data', $_REQUEST)) { 
    $error = Errors::NO_DATA;
  }
  printError($error);
}


function check_null($to_be_checked, $error){
  if($to_be_checked == "" || $to_be_checked == " ") {
      printError($error);
  }
}

function cors() {
    
    // Allow from any origin
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
        // you want to allow, and if so:
        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }
    
    // Access-Control headers are received during OPTIONS requests
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
        
        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            // may also be using PUT, PATCH, HEAD etc
            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
        
        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
    
        exit(0);
    }
    
    echo "You have CORS!";
}
