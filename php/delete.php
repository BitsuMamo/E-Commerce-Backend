<?php
if($_GET['type'] == ""){
  die("Type Error");
}

$type = $_GET['type'];

switch($type){
  case 'delete_by_id':
    echo "deleted by id";
  break;
  default:
  break;
}