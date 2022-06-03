void setup() {
  size(800, 500); 
  background(0);
  
  charSquares();
}

// HELPER FUNCTIONS 

color charToColor(char c) {
  int grayVal = c; 
  color f = color(grayVal, grayVal, grayVal); 
  return f; 
}

void drawChar(int x, int y, char c) {
  int i = c; 
  square(x, y, i);
}

// MAIN METHOD

void charSquares() {
  int x = 0; int y = 0; char c; 
  
  for (c = 'a'; c <= 'z'; c++) {
    
    int i = c;
    
    if (x > width) {
      x = 0; y += i; 
    } // end if statement 
    
    noStroke();
    fill(charToColor(c));
    drawChar(x, y, c);
    x += c; 
    
  } // end for loop
} // end charSquares
