PImage start; // img for the start screen
int score = 0; // initialize score
int round = 0; // initialize round
boolean gameStart = true; // initialize gameStart
boolean gameEnd = false;  // initialize gameEnd
Plants plants;
PImage one;
PImage two;
PImage three;
int posOne;
int posTwo;
int posThree;

void setup(){
  size(1024, 768); // sets the dimensions for the game window
  // load all of the images
  start = loadImage("start3.jpg");  
  plants = new Plants();
    two = plants.getRandBadImg();
    three = plants.getRandBadImg();
    while(two.equals(three)){
      three = plants.getRandBadImg();
    }
    one = plants.getRandGoodImg();
    posOne = 50;
    posTwo = 362;
    posThree = 674;
}

void draw(){
  // 
  if(gameStart){
     image(start, 0, 0, 1024, 768);
     textSize(50);
     fill(19);
     text("CLICK ANYWHERE TO START", 150, 400);     
  } else {
    background(140); 
    // Testing images
    image(one, posOne , 200, 300, 300);
    image(two, posTwo, 200, 300, 300);
    image(three, posThree, 200, 300, 300);
  }
}

void mouseClicked(){
  if(gameStart && gameEnd == false && (mouseX < 1024 && mouseX > 0) && ((mouseY < 768) && (mouseY > 0)));
    gameStart = false;
  // Add the mouse clicking pimages here
   
}
