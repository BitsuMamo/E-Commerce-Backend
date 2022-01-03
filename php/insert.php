<?php
require_once("connection.php");

$type = $_GET['type'];

// Checking if type is empty or space
if($type == "" || $type == " "){
  echo "Error Empty type";
}

$type = trim($type);

$table = $_GET['table'];

// Checking if table is empty or space
if($table == "" || $table == " "){
  echo "Error Empty Table";
}

$table = trim($table);


$data = $_GET['data'];

if($data == "" || $data == " "){
  echo "Error Empty data";
}

$data = trim($data);


// for($i = 0; $i < count($data); $i++){
//   $data[$i] = trim($data[$i]);
// }

function query_generator($data, $table){
  $data_array = explode(',', $data);

  $query = "INSERT INTO $table (name, email, phone_number, permission) VALUE (";

  for($i = 0; $i < count($data_array); $i++){
    if($i < count($data_array) - 1){
      $query = $query . "'$data_array[$i]',";
    }else{
      $query = $query . "'$data_array[$i]')";
    }
  }
  return $query;
}

switch($type){
  case "insert_one":
    $query = query_generator($data, $table);
    echo $query;
    $result = mysqli_query($conn, $query);

    if($result){
      echo "Successfully inserted";
    }else{
      echo "failed";
    }
    
  break;
}