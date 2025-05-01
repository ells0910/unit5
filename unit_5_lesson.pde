// Colours
color white   = #ffffff;
color black   = #000000;
color red     = #ff0000;

// Variables
float player1x, player1y, player1d;
float player2x, player2y, player2d;

//ball variables
float ballx, bally, balld;
float vx,vy, ax, ay;

// keyboards variables
boolean wKey, sKey, aKey, dKey, upKey, downKey, leftKey, rightKey;


void setup() {
  size(600, 600, P2D);
  ballx = width/2;
  bally = 50;
  balld = 50;
  
  //Player1
  player1x = width/2;
  player1y = height/2;
  player2d = 100;
  
  //Player2
  player2x = width/2;
  player2y = height/2;
  player2d = 100;
  
  
  vx = 4;
  vy = 10;
  
  ax = 2;
  ay = -1;
  
} //----------------------- end of setup ---------------------------

void draw() {
  background(white);
  
  // player1
  strokeWeight(5);
  fill(255,0,0);
  circle(player1x, player1y, player1d);
  
  //player 2
  strokeWeight(5);
  stroke(white);
  fill(black);
  circle(player2x, player2y, player2d);
  
  //movement 
  ballx = ballx + vx;
  bally = bally + vy;
  
 // movement player
  if(wKey) player1y -= 5;
  if(sKey) player1y += 5;
  if(aKey) player1x -= 5;
  if(dKey) player1x += 5;
  
  if(upKey) player2y -=5;
  if(downKey) player2y +=5;
  if(aKey) player2x += 5;
  if(dKey) player2x -= 5;
  
  //bouncing code
  if(bally <=0) { //top
  vy = vy * -0.9;
  }
  if (bally>= height) { //bottom
  vy = vy * -0.9;
  bally = height;
  }
  if (ballx <= 0) { //right
  vx = vx * -0.9;
  ballx = 0;
  }
  if (ballx >= width) { //left
  vx = vx * -0.9;
  ballx = width;
  }
  
  
  
} //-------------------------  end of draw  ------------------------


void keyPressed() {

  
}
