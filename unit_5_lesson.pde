//Unit5 Ellie Gao
// >___________________<


// Colours
color white   = #ffffff;
color black   = #000000;
color red     = #ff0000;

// player Variables
float p1x, p1y, p1d;
float p2x, p2y, p2d;


// keyboards variables
boolean wkey, skey, akey, dkey, upkey, downkey, leftkey, rightkey;

//ball variables
float ballx, bally, balld;
float vx, vy;

void setup() {
  size(600, 600, P2D);
  background(white);
  
// Player1
  p1x = 50;
  p1y = height / 2;
  p1d = 100;  
  
// Player2
  p2x = width - 50;
  p2y = height / 2;
  p2d = 100;  
  
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  vx = 3;
  vy = 5;
  

} //----------------------- end of setup ---------------------------

void draw() {
  background(white);
  strokeWeight(5);
  
// Player1
  fill(0);
  circle(p1x, p1y, p1d);
  

// Player 2
  fill(255);
  circle(p2x, p2y, p2d);
  
// Ball
  fill(255, 0, 0);
  circle(ballx, bally, balld);

  
// movement player
  if(wkey) p1y = p1y - 5;
  if(skey) p1y = p1y + 5;
  if(akey) p1x = p1x - 5;
  if(dkey) p1x = p1x + 5;
  
  if(upkey)   p2y = p2y - 5;
  if(downkey) p2y = p2y + 5;
  if(rightkey)p2x = p2x + 5;
  if(leftkey) p2x = p2x - 5;
  
//movement
  ballx = ballx + vx;
  bally = bally + vy;
  
  if(bally <= 0)vy = vy * -1;              // top
  if(bally >= height) vy = vy * -1;       // bottom
  if(ballx <=0) vx = vx * -1;            // left
  if(ballx >= width) vx = vx * -1;      // right
  
// Ball collision with Player1
if (dist(p1x, p1y, ballx, bally) <= p1d / 2 + balld / 2) {
  vx = -vx; 
  vy = (bally - p1y) * 0.2; 
}

// Ball collision with Player2
if (dist(p2x, p2y, ballx, bally) <= p2d / 2 + balld / 2) {
  vx = -vx;
  vy = (bally - p2y) * 0.2; 
}
  
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
  
  if (keyCode == UP)   upkey     = false;
  if (keyCode == LEFT) leftkey   = false;
  if (keyCode == DOWN) downkey   = false;
  if (keyCode == RIGHT)rightkey  = false;
}
