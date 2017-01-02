console.log("The script is running!");

var bullet = document.getElementsByTagName('ul');
bullet[0].style = "list-style: square";
bullet[1].style = "list-style: circle";


function showGIF(event) {
  console.log("click happened! click event info:");
  console.log(event);
  var gif = document.getElementById("gif");
  gif.style.display = "block";
  event.preventDefault();
}

var photo = document.getElementById("click-link");
photo.addEventListener("click", showGIF);