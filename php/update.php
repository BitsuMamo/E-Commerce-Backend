<?php
require_once("connection.php");
$type = $_GET('type');

// Checking if type is empty or space
if($type == "" || $type == " "){
  echo "Error Empty type";
}

$type = trim($type);

$table = $_GET('table');

// Checking if table is empty or space
if($table == "" || $table == " "){
  echo "Error Empty Table";
}

$table = trim($table);
