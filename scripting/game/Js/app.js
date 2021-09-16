const scenary = () =>{
  var ctx = document.getElementById("myCanvas").getContext("2d");
  ctx.beginPath();
  //img.src=","
  //var img = new Image();
  //img.src = '../Imagenes/back-image.png'; 
  var img = document.getElementById("back-image");
  console.log(typeof img);
  ctx.drawImage(img,0,0);
  //ctx.rect(20, 40, 50, 50);
  //ctx.fillStyle = "#FF0000";
  //ctx.fill();
  ctx.closePath();
}

scenary();

console.log('hola');
