<?php

$table_insert_params = [
  'users' => 'name,email,phone_number,permission',
];

$table_id_name = [
  'users' => 'id'
];

function insert_query_generator($table, $data){
  $data_array = explode(',', $data);
  global $table_insert_params;

  $query = "INSERT INTO $table ($table_insert_params[$table]) VALUE (";

  for($i = 0; $i < count($data_array); $i++){
    if($i < count($data_array) - 1){
      $query = $query . "'$data_array[$i]',";
    }else{
      $query = $query . "'$data_array[$i]')";
    }
  }
  return $query;
}

function update_query_generator($table, $data){
  $data_array = explode(',', $data);
  global $table_insert_params;
  global $table_id_name;

  $params_array = explode(',', $table_insert_params[$table]);

  $query = "UPDATE $table SET ";
  for($i = 0; $i < count($params_array); $i++){
    $data_index = $i + 1;
    if($i < count($params_array) - 1){
      $query = $query . "$params_array[$i] = '$data_array[$data_index]', ";
    }else{
      $query = $query . "$params_array[$i] = '$data_array[$data_index]'";
    }
  }
  $query = $query . " WHERE $table_id_name[$table] = $data_array[0]";
  return $query;
}

function select_query_generator($table, $id = -1){
  global $table_id_name;

  if($id < 0){
    $query = "SELECT * FROM $table";
  }

  $query = "SELECT * FROM $table WHERE $table_id_name[$table] = $id";

  return $query;
}

function delete_query_generator($table, $id = -1){
  global $table_id_name;

  $query = "";

  if($id >= 0){
    $query = "DELETE FROM $table WHERE $table_id_name[$table] = $id";
  }

  return $query;
}
