<?php

require_once "connection.php";

// CORS. Preventing CORS Error
header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");

// Make the Response JSON
header('Content-Type: application/json; charset=utf-8');


$type = ['create', 'update', 'delete', 'select'];
$tables = ['user', 'product', 'review', 'shopping_session', 'user_address', 'user_payment', 'supplier_payment', 'supplier_address', 'supplier', 'payment_details', 'cart_item', 'order_items', 'order_details', 'product_category', 'product_iventory'];


$stored_procedures = [];

for ($i = 0; $i < count($type); $i++) {
  $stored_procedures[$type[$i]] = [];
}

for ($i = 0; $i < count($type); $i++) {
  for ($j = 0; $j < count($tables); $j++) {
    $name = 'SP_' . $type[$i];
    $name = $name . '_' . $tables[$j];
    $stored_procedures[$type[$i]][$tables[$j]] = $name;
  }
}

//print_pretty($stored_procedures);
function sp_query_generator($type, $table, $data)
{
  $data_array = explode(',', $data);
  global $stored_procedures;

  // $query = "INSERT INTO $table ($table_insert_params[$table]) VALUE (";
  $query = "CALL {$stored_procedures[$type][$table]} (";

  for ($i = 0; $i < count($data_array); $i++) {
    if ($i < count($data_array) - 1) {
      if (is_numeric($data_array[$i])) {
        $query = $query . "$data_array[$i],";
      } else {
        $query = $query . "'$data_array[$i]',";
      }
    } else {
      if (is_numeric($data_array[$i])) {
        $query = $query . "$data_array[$i])";
      } else {
        $query = $query . "'$data_array[$i]')";
      }
    }
  }
  return $query;
}

function auth_query_generator($functionName, $data)
{
  $data_array = explode(',', $data);
  $query = "CALL ${functionName}(";

  for ($i = 0; $i < count($data_array); $i++) {
    if ($i < count($data_array) - 1) {
      if (is_numeric($data_array[$i])) {
        $query = $query . "$data_array[$i],";
      } else {
        $query = $query . "'$data_array[$i]',";
      }
    } else {
      if (is_numeric($data_array[$i])) {
        $query = $query . "$data_array[$i])";
      } else {
        $query = $query . "'$data_array[$i]')";
      }
    }
  }
  return $query;
}

function check_response($result)
{
  $json_data = [];
  global $conn;

  if ($result) {
    // echo "Successful Query";
    $json_data["Response"] = "Success";
  } else {
    $json_data["Response"] = "Fail";
    $json_data["Error"] = mysqli_error($conn);
  }
  return $json_data;
}

function print_pretty($array)
{
  echo "<pre>";
  print_r($array);
  echo "</pre>";
}

function check_key_exists()
{
  // print_pretty($_REQUEST)
  $error = Errors::NO_ERROR;

  if (!array_key_exists('table', $_REQUEST)) {
    $error = Errors::NO_TABLE;
  }
  printError($error);

  if (!array_key_exists('data', $_REQUEST)) {
    $error = Errors::NO_DATA;
  }
  printError($error);
}


function check_null($to_be_checked, $error)
{
  if ($to_be_checked == "" || $to_be_checked == " ") {
    printError($error);
  }
}
