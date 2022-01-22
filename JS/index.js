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
  var data = await $.get(
    "http://localhost/WebDev/project/E-Commerce-Backend/php/select.php?table=user&data=-1"
  );
  //data = JSON.parse(data);
  console.log(data.Data);
}

temp();
