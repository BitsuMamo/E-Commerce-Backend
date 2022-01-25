<?php
require_once "connection.php";
require_once "utilites.php";
require_once "ErrorHandler.php";

// print_pretty($_REQUEST);
check_key_exists();

$table = $_REQUEST['table'];

// Checking if table is empty or space
check_null($table, Errors::INVALID_TABLE);

$table = trim($table);

$data = $_REQUEST['data'];

check_null($data, Errors::EMPTY_DATA);

$data = trim($data);

$query = sp_query_generator('create', $table, $data);

$result = mysqli_query($conn, $query);

$json_data = check_response($result);

$query = "CALL SP_select_last_insert('${table}')";

$result = mysqli_query($conn, $query);

mysqli_close($conn);

header('Content-Type: application/json; charset=utf-8');

if ($result) {
  $rows = [];

  if ($json_data['Response'] == 'Success') {
    while ($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row;
    }
  }

  $json_data['Data'] = $rows;
}

echo (json_encode($json_data));
