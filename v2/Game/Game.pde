// 0: Init State
// 1: Game State
// 2: Game-over State

int gameState = 0; // start at init state
PImage start; // storage of the start image
int round = 1; // Game should start at round 1
// Plant images vars
Plants plants; 
PImage one, two, three;
int posOne, posTwo, posThree;
// Win boolean
boolean win = false;

// During setup, some of the variables are initialized
void setup() {
  size(1024, 768);
  //fullScreen();
  start = loadImage("start.jpg");
  plants = new Plants();
  posOne = 50;
  posTwo = 362;
  posThree = 674;
}

void draw() {
  if (gameState == 0) {
    startGame();
  }
  if (gameState == 1) {
    background(#2C3539);
    textSize(50); 
    fill(#FFFFFF); 
    text("Click the non-poisonous plant.", 150, 100); 
    if (round == 1) {
      roundOne();
      image(one, posOne, 200, 300, 300);
      image(two, posTwo, 200, 300, 300);
      image(three, posThree, 200, 300, 300);
    }
    if (round == 2) {
      roundTwo();
      image(one, posOne, 200, 300, 300);
      image(two, posTwo, 200, 300, 300);
      image(three, posThree, 200, 300, 300);
    }
    if (round == 3) {
      roundThree();
      image(one, posOne, 200, 300, 300);
      image(two, posTwo, 200, 300, 300);
      image(three, posThree, 200, 300, 300);
    }
  }
  if (gameState == 2) {
    endGame();
  }
}

void startGame() {
  image(start, 0, 0, 1024, 768);
  textSize(50);
  fill(#FFFFFF);
  text("CLICK ANYWHERE TO START", 150, 400);
}

void mouseClicked() {
  if (gameState == 0) {
    gameState = 1;
  } else if (gameState == 1) {
    if (round == 1) {
      if (middlePic()) {
        nextRound();
      } else if (firstPic() || lastPic()) {
        gameState = 2;
      }
    } else if (round == 2) {
      if (firstPic()) {
        nextRound();
      } else if (middlePic() || lastPic()) {
        gameState = 2;
      }
    } else if (round == 3) {
      if (middlePic()) {
        win = true;
        gameState = 2;
      } else if (firstPic() || lastPic()) {
        gameState = 2;
      }
    }
  } else if (gameState == 2) {
    reset();
    gameState = 0;
  }
}

void roundOne() {
  one = plants.getBadPlant(0);
  two = plants.getGoodPlant(0);
  three = plants.getBadPlant(1);
}

void roundTwo() {
  one = plants.getGoodPlant(1);
  two = plants.getBadPlant(2);
  three = plants.getBadPlant(3);
}

void roundThree() {
  one = plants.getBadPlant(4);
  two = plants.getGoodPlant(2);
  three = plants.getBadPlant(5);
}

// End game screen
void endGame() {
  background(0); // black background
  textSize(50);
  fill(#FF45FF);
  if (win) {
    text("CONGRATS! YOU WIN!", 200, 400);
  } else {
    text("GAME OVER! YOU LOSE!", 200, 400);
  }
  text("Click to restart and play!", 200, 500);
}

// Location of the middle picture for clicking
boolean middlePic() {
  if ((mouseX > posTwo) && (mouseX < (posTwo + 300)) && (mouseY > 200) && (mouseY < 500)) {
    return true;
  }
  return false;
}

// Location of the first picture for clicking
boolean firstPic() {
  if ((mouseX > posOne) && (mouseX < (posOne + 300)) && (mouseY > 200) && (mouseY < 500)) {
    return true;
  }
  return false;
}

// Location of the last picture for clicking
boolean lastPic() {
  if ((mouseX > posThree) && (mouseX < (posThree + 300)) && (mouseY > 200) && (mouseY < 500)) {
    return true;
  }
  return false;
}

// This goes to the next round
void nextRound() {
  round += 1;
}

// Reset the changed var(s)
void reset() {
  round = 1;
}
