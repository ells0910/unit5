//Unit5 Game -- Clicker 
//Ellie Gao
// May 14, 2025
// 2-3

int mode;
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;


//colors
color white     = #ffffff;
color black     = #000000;
color red       = #ff0000;

// keyboards variables
boolean wkey, skey, upkey, downkey;

//ball variables
float ballx, bally, balld;
float vx, vy;


void setup(){
  size(800,600);
  mode = INTRO;
  
  
} //------------------------End of Setup 




void draw()       {
  background(0); 
  
  if ( mode == INTRO) {
     } else if (mode == GAME) {
     } else if (mode == PAUSE) { 
     } else if (mode == GAMEOVER) {
     } else {
     
     }
     
  
  
  
} //-----------------------End of Draw
