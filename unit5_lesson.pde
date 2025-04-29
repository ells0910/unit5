// Colours
color white   = #ffffff;
color black   = #000000;

// Variables
float x, y, d;

//boolean


void setup() {
  size(600, 600, P2D);
  x = width/2;
  y = height/2;
  d = 100;
  
} //----------------------- end of setup ---------------------------

void draw() {
  background(white);
  
  // player1
  fill(black);
  circle(x, y, d);
  
  
} //-------------------------  end of draw  ------------------------


void keyPressed() {
  
  if (key =='w')  y = y - 10;
  if (key =='s')  y = y + 10;
  if (key == 'd') x = x + 10;
  if (key == 'a') x = x - 10;
  
}
