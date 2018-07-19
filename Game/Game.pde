PImage start; // img for the start screen
int score = 0; // initialize score
int round = 0; // initialize round
boolean gameStart = false; // initialize gameStart
Plants plants;
PImage one;
PImage two;
PImage three;
//int posOne;
//int posTwo;
//int posThree;
IntList pos;

void setup() {
  size(1024, 768); // sets the dimensions for the game window
  // load all of the images
  start = loadImage("start3.jpg");  
  plants = new Plants();
  if (!gameStart) {
    two = plants.getRandBadImg();
    three = plants.getRandBadImg();
    while (two.equals(three)) {
      three = plants.getRandBadImg();
      one = plants.getRandGoodImg();
      pos = new IntList();
      pos.append(50);
      pos.append(362);
      pos.append(674);
      println("setup");
      println(pos);
      println("shuffle");
      pos.shuffle();
      println(pos);
    }
  }
  /*posOne = 50;
   posTwo = 362;
   posThree = 674;*/
}

void draw() {
  // 
  if (!gameStart) {
    image(start, 0, 0, 1024, 768);
    textSize(50);
    fill(19);
    text("CLICK ANYWHERE TO START", 150, 400);
  } else {
    background(#f0ffff); 
    // Testing images
    textSize(50);
    fill(0);
    play();
  }
}

void play() {

  text("Click the non-poisonous plant.", 150, 100);
  image(one, pos.get(0), 200, 300, 300);
  image(two, pos.get(1), 200, 300, 300);
  image(three, pos.get(2), 200, 300, 300);
}

void mouseClicked() {
  if (!gameStart && (mouseX < 1024 && mouseX > 0) && ((mouseY < 768) && (mouseY > 0)));
  gameStart = true;
  // Add the mouse clicking pimages here
  
}
