function setup() {
  createCanvas(800, 500); 
  background(0);  
}

function draw() {
  charSquares();
}

function charToColor(c) {
  var grayVal = c; 
  var f = color(grayVal, grayVal, grayVal); 
  return f; 
}

function drawChar(x, y, c) {
  var i = c; 
  square(x, y, i);
}

function charSquares() {
  var x = 0; var y = 0; var c; 
  
  for (c = 'a'; c <= 'z'; c++) {
    
    var i = c;
    
    if (x > width) {
      x = 0; y += i; 
    } // end if statement 
    
    noStroke();
    fill(charToColor(c));
    drawChar(x, y, c);
    x += c; 
    
  } // end for loop
} // end charSquares
