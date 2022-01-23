// var data = $.get(
//   "http://localhost/WebDev/project/E-Commerce-Backend/php/select.php?table=user&data=10",
//   function(responseText) {
//     responseText;
//   })

//   console.log(data.responseText);

// $.get(   "http://localhost/WebDev/project/E-Commerce-Backend/php/select.php?table=user&data=10",
//  function( data ) {
//   $( "body" ).html( data );
//   alert( "Load was performed." );
// });

async function temp() {
  var data = await $.post(
    "http://localhost/WebDev/project/E-Commerce-Backend/php/delete.php",
    { table: "user", data: "90" }
  );

  //data = JSON.parse(data);
  console.log(data);
}

temp();
