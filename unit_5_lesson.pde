// Colours
color white   = #ffffff;
color black   = #000000;
color red     = #ff0000;

// player Variables
float p1x, p1y, p1d;
float p2x, p2y, p2d;

//ball variables
//float ballx, bally, balld;
//float vx,vy, ax, ay;

// keyboards variables
boolean wkey, skey, akey, dkey, upkey, downkey, leftkey, rightkey;


void setup() {
  size(600, 600, P2D);
  background(white);
 // ballx = width/2;
 // bally = 50;
 // balld = 50;
  
  //Player1
  p1x = 50;
  p1y = height/2;
  p2d = 100;
  
  //Player2
  p2x = width-50;
  p2y = height/2;
  p2d = 100;
  
  
//  vx = 4;
 // vy = 10;
  
//  ax = 2;
 // ay = -1;
  
} //----------------------- end of setup ---------------------------

void draw() {
  background(white);
  
  // player1
  strokeWeight(5);
  fill(255,0,0);
  circle(p1x, p1y, p1d);
  

 //player 2
  strokeWeight(5);
  stroke(white);
  fill(black);
  circle(p2x, p2y, p2d);
  
  //movement 
  //ballx = ballx + vx;
 // bally = bally + vy;
  
 // movement player
  if(wkey) p1y = p1y+5;
  if(skey) p1y = p1y-5;
  if(akey) p1x = p1y-5;
  if(dkey) p1x = p1y+5;
  
  if(upkey)   p2y = p2y+5;
  if(downkey) p2y = p2y-5;
  if(rightkey)p2x = p2x+5;
  if(leftkey) p2x = p2x-5;
  
  //bouncing code
  //if(bally <=0) { //top
 // vy = vy * -0.9;
//  }
//  if (bally>= height) { //bottom
//  vy = vy * -0.9;
//  bally = height;
 // }
 // if (ballx <= 0) { //right
 // vx = vx * -0.9;
 // ballx = 0;
 // }
 // if (ballx >= width) { //left
 // vx = vx * -0.9;
//  ballx = width;
//  }
  
  
  
} //-------------------------  end of draw  ------------------------


void keyPressed() {
  
  //playerone
  if (key == 'w') wkey = true;
  if (key == 'a') akey = true;
  if (key == 's') skey = true;
  if (key == 'd') dkey = true;
  
  if (keyCode == UP)   upkey    = true;
  if (keyCode == LEFT) leftkey  = true;
  if (keyCode == DOWN) downkey  = true;
  if (keyCode == RIGHT)rightkey = true;
  
} //-------------------------- end of keypressed ----------------------------

void keyReleased() {
  if (key == 'w') wkey = false;
  if (key == 'a') akey = false;
  if (key == 's') skey = false;
  if (key == 'd') dkey = false;
  
  if (keyCode == UP)   upkey     =   false;
  if (keyCode == LEFT) leftkey   =   false;
  if (keyCode == DOWN) downkey   =   false;
  if (keyCode == RIGHT)rightkey  =   false;
  
  
  
} //----------------------- end of keyreleased ---------------------
