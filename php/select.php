<?php
if($_GET['type'] == ""){
  die("Type Error");
}

$type = $_GET['type'];

switch($type){
  case 'select_by_id':
    echo "selected by id";
  break;
  case 'select_all':
    echo 'selected all';
  break;
  case 'select_by_category':
    echo 'selected by category';
  break;
  default:

  break;
}