<?php
require_once "connection.php";
require_once "utilites.php";
require_once "ErrorHandler.php";

$error = Errors::NO_ERROR;

if(!array_key_exists('type', $_GET)) { $error = Errors::NO_TYPE;
}
printError($error);
if(!array_key_exists('table', $_GET)) { $error = Errors::NO_TABLE;
}
printError($error);
if(!array_key_exists('data', $_GET)) { $error = Errors::NO_DATA;
}
printError($error);

$type = $_GET['type'];

// Checking if type is empty or space
if($type == "" || $type == " ") {
    $error = Errors::INVALID_TYPE;
    printError($error);
}

$type = trim($type);

$table = $_GET['table'];

// Checking if table is empty or space
if($table == "" || $table == " ") {
    $error = Errors::INVALID_TABLE;
    printError($error);
}

$table = trim($table);


switch($type){
case "update":
    $data = $_GET['data'];

    if($data == "" || $data == " ") {
        $error = Errors::EMPTY_DATA;
        printError($error);
    }

    $data = trim($data);

    $query = query_generator('update', $table, $data);

    $result = mysqli_query($conn, $query);

    header('Content-Type: application/json; charset=utf-8');

    $json_data = check_response($result);

    echo json_encode($json_data);
    
    break;
}

