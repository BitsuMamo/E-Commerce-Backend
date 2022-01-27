<?php
$arr = [
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6477/6477414_sd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6442/6442031_sd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/dam/MMT-499950-pol_der-924b0c86-a279-4f37-b727-c2f26f27f9db.jpg;maxHeight=646;maxWidth=948",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4900/4900942_sd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6215/6215933_sd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6443/6443337_sd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6471/6471479_sd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/4900/4900942_sd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6472/6472653_rd.jpg;maxHeight=640;maxWidth=550",
"https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6443/6443337_sd.jpg;maxHeight=640;maxWidth=550"
];

require('connection.php');

$query = "CALL SP_select_product(-1)";

$result = mysqli_query($conn, $query);


mysqli_close($conn);
$rows = [];

while ($row = mysqli_fetch_assoc($result)) {
  $rows[] = $row;
}

echo($rows[0]['id']);
require('connection.php');

for ($i=0; $i < count($rows); $i++) { 

  $id = $rows[$i]['id'];
  $name = $rows[$i]['name'];
  $description = $rows[$i]['description'];
  $category_id = $rows[$i]['category_id'];
  $inventory_id = $rows[$i]['inventory_id'];
  $supplier_id = $rows[$i]['supplier_id'];
  $price = $rows[$i]['price'];

  $query = "CALL SP_update_product($id,'$name','$description','${arr[$i % count($arr)]}',$category_id,$inventory_id,$supplier_id,$price)";
  echo $i % count($arr);
  $result = mysqli_query($conn, $query);

  echo(mysqli_error($conn));
  echo('\n');
}




