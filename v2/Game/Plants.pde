// List of all the plant images
// Variables
String[] poisonNames = {"zz.jpg", "dustymiller.jpg", "crabeye.jpg", "wolfsbane.jpg", "baneberry.jpg", "snakeroot.jpg", "nightshade.jpg", "suicidetree.jpg"}; // add more images here
String[] edibleNames = {"fuchsia.jpg", "chives.jpg", "dill.jpg", "marshmallow.jpg", "snapdragon.jpg", "fennel.jpg"};
// Arrays to sore the images of the plants
PImage[] good;
PImage[] bad;


class Plants {
  // Constructor for Plants
  // Loads images and places them into their particular array
  Plants() {
    good = new PImage[edibleNames.length];
    bad = new PImage[poisonNames.length];
    for (int i = 0; i < poisonNames.length; i++) {
      bad[i] = loadImage(poisonNames[i]);
    }
    for (int i = 0; i < edibleNames.length; i++) {
      good[i] = loadImage(edibleNames[i]);
    }
  }
  
  
  // Returns the image x in the list of the edible plants
  // Uses an int
  // Returns a pimage
  PImage getGoodPlant(int x) {
    //int x = (int) random(good.length); 
    return good[x];
  }

  // Returns the image x in the list of poisonous plants
  // Uses an int
  // Returns a pimage
  PImage getBadPlant(int x) {
    //int x = (int) random(bad.length);
    return bad[x];
  }
}
