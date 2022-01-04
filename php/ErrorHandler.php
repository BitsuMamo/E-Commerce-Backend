<?php


class Errors{
  const NO_ERROR = "";
  const INVALID_TYPE = "Invalid Type";
  const NO_TYPE = "No Type";
  const INVALID_TABLE = "Invalid Table";
  const NO_TABLE = "No Table";
  const INVALID_DATA = "Invalid Data";
  const EMPTY_DATA = "Emtpy Data";
  const NO_DATA = "No Data";
}


function printError($error){
  if(!$error == Errors::NO_ERROR)
    die($error);
}
