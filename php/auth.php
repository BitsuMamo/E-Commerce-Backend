<?php
require_once "connection.php";
require_once "utilites.php";
require_once "ErrorHandler.php";

// print_pretty($_REQUEST);
$data = $_REQUEST['data'];

check_null($data, Errors::EMPTY_DATA);

$data = trim($data);

$query = fn_query_generator('function_userAuth', $data);

$result = mysqli_query($conn, $query);

$json_data = check_response($result);


$rows = [];

if($json_data['Response'] == 'Success'){
  while($row = mysqli_fetch_assoc($result)){
    $rows[] = $row;
  }
}

mysqli_close($conn);

$json_data['Data'] = $rows;

echo json_encode($json_data);
