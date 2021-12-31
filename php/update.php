<?php
if($_GET['type'] == ""){
  die("Type Error");
}

$type = $_GET['type'];

switch($type){
  case 'update_by_id':
    echo "updated by id";
  break;
  default:
  break;
}