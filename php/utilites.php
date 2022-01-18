<?php

require_once "connection.php";

// Used to create all the stored stored_procedures names dymamicaly
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




$table_insert_params = [
  'user' => 'username,password,first_name,last_name,telephone',
];

$table_id_name = [
  'user' => 'id'
];

function query_generator($type, $table, $data){
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
        echo "Successful Query";
        $json_data["Response"] = "Success";
    }else{
        $json_data["Response"] = "Fail";
        $json_data["Error"] = mysqli_error($conn);
    }
    mysqli_close($conn);
    echo "\n";
    return $json_data;
}


function print_pretty($array){
  echo "<pre>";
  print_r($array);
  echo "</pre>";
}


