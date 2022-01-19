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

$query = query_generator('delete', $table, $data);

$result = mysqli_query($conn, $query);

header('Content-Type: application/json; charset=utf-8');

$json_data = check_response($result);

echo json_encode($json_data);
