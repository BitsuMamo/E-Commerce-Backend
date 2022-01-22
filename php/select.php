<?php
require_once "connection.php";
require_once "utilites.php";
require_once "ErrorHandler.php";

check_key_exists();

$table = $_GET['table'];

// Checking if table is empty or space
check_null($table, Errors::INVALID_TABLE);

$table = trim($table);

$data = $_GET['data'];

check_null($data, Errors::EMPTY_DATA);

$data = trim($data);

$query = query_generator('select', $table, $data);

$result = mysqli_query($conn, $query);

$json_data = check_response($result);

header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");

header('Content-Type: application/json; charset=utf-8');

$rows = [];
if($json_data['Response'] == 'Success'){
  while($row = mysqli_fetch_assoc($result)){
    $rows[] = $row;
  }
}

$json_data['Data'] = $rows;

echo json_encode($json_data);
