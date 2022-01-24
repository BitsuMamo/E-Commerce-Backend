<?php
require_once "connection.php";
require_once "utilites.php";
require_once "ErrorHandler.php";

// print_pretty($_REQUEST);
$data = $_REQUEST['data'];

check_null($data, Errors::EMPTY_DATA);

$data = trim($data);

// $query = fn_query_generator('function_userAuth', $data);
// $query = "CALL auth('bam', 'bam')";
$query = "select function_userAuth('valentine.reichert','558e93a2f5cd3d020b732429c97b3a2d9757a5a5')";
// $query = "call auth('valentine.reichert','558e93a2f5cd3d020b732429c97b3a2d9757a5a5')";

$result = mysqli_query($conn, $query);

$json_data = check_response($result);


$rows = [];

if($json_data['Response'] == 'Success'){
  while($row = mysqli_fetch_assoc($result)){
    $rows[] = $row;
  }
}

$json_data['Data'] = $rows;

echo json_encode($json_data);
