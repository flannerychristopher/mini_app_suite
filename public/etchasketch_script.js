$(document).ready(function(){

// ---- make HTML and CSS

  $("body").css({
    "background": "url('sketch.jpg') no-repeat center center fixed",
    "background-size": "cover",
    "margin": "0",
    "padding": "0",
    "border": "none",
    "text-align": "center",
  });

  var heading = document.createElement("h1");
  heading.innerHTML = "Etch-a-Sketch";
  heading.style.textAlign = "center";
  heading.style.color = "#fff";
  heading.style.textShadow = "2px 0px 10px #000000";
  $("body").append(heading);

  var paragraph = document.createElement("p");
  paragraph.innerHTML = "all CSS and HTML generated through JavaScript";
  paragraph.style.textAlign = "center";
  paragraph.style.color = "#fff";
  paragraph.style.textShadow = "2px 0px 10px #000000";
  $("body").append(paragraph);

  var resize = document.createElement("button");
  resize.innerHTML = "get started! choose sketch dimensions";
  resize.className = "resize";
  resize.style.display = "block";
  resize.style.margin = "25px auto";
  $("body").append(resize);

  var container = document.createElement("div");
  container.className = "container";
  container.style.width = "512px";
  container.style.height = "512px";
  container.style.margin = "auto";
  container.style.border = "4px solid #f1e3dd";
  $("body").append(container);

  var clear = document.createElement("button");
  clear.innerHTML = "clear drawing";
  clear.className = "clear";
  clear.style.display = "block";
  clear.style.margin = "25px auto";
  $("body").append(clear);

// ---- clear function

$(".clear").click(function(){
  $(".tile").css("background-color", "#fff")
});

// ---- resize button function

$(".resize").click(function() {
  $(".container").empty();
  var userInput = prompt("Enter number of squares per side to make your grid (enter between 2 and 64):");
    if (isNaN(userInput)) {
      alert("Error: Your input is not a number!");
    }
    else if (userInput <2 || userInput > 64) {
      alert("Error: Input out of range!");
    }
    else {
      var squareWidth = 512 / userInput;
      var iter = userInput * userInput;
      for (var i = 0; i < iter; i++) {
      var div2 = document.createElement("div");
      div2.className = "tile";
      $(".container").append(div2);
    }

  $(".tile").css({
    "width": squareWidth+"px",
    "height": squareWidth+"px",
    "float": "right",
    "background-color": "#fff"
  });

// ---- draw function
  function color(){
    var hash = "0123456789ABCDEF"
    var color = "#"
    for ( j = 0 ; j < 6 ; j++) {
      color += hash[Math.floor(Math.random()*16)];
    }
    return color;
  }

  $(".tile").mouseenter(function(){
      $(this).css("background-color", color())
  });

}

});

});
