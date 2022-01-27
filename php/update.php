<?php
require_once "connection.php";
require_once "utilites.php";
require_once "ErrorHandler.php";

check_key_exists();

$table = $_REQUEST['table'];

// Checking if table is empty or space
check_null($table, Errors::INVALID_TABLE);

$table = trim($table);

$data = $_REQUEST['data'];

check_null($data, Errors::EMPTY_DATA);

$data = trim($data);

$query = sp_query_generator('update', $table, $data);

$result = mysqli_query($conn, $query);

$json_data = check_response($result);

mysqli_close($conn);

echo json_encode($json_data);
