<?php
if($_GET['type'] == ""){
  die("Type Error");
}

$type = $_GET['type'];

switch($type){
  case 'insert_one':
    echo "inserted";
  break;

  default:

  break;
}