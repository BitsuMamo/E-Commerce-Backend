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

$query = query_generator('update', $table, $data);

$result = mysqli_query($conn, $query);

$json_data = check_response($result);

header('Content-Type: application/json; charset=utf-8');

echo json_encode($json_data);

