PImage start; // img for the start screen
int score = 0; // initialize score
int round = 0; // initialize round
boolean gameStart = true; // initialize gameStart
boolean gameEnd = false;  // initialize gameEnd

void setup(){
  size(1024, 768); // sets the dimensions for the game window
  start = loadImage("start3.jpg"); // load the start image
}

void draw(){
  if(gameStart){
     image(start, 0, 0, 1024, 768);
     textSize(50);
     text("CLICK ANYWHERE TO START", 150, 400);     
  } else {
    background(0); 
  }
}

void mouseClicked(){
  if(gameStart && gameEnd == false && (mouseX < 1024 && mouseX > 0) && ((mouseY < 768) && (mouseY > 0)));
    gameStart = false;
}
