// List of all the plant images
// Variables
String[] poisonNames = {"zz.jpg", "dustymiller.png"}; // add more images here
String[] editableNames = {"fuchsia.jpg"};
PImage[] good;
PImage[] bad;


class Plants {
  // Constructor for Plants
  // Loads images and places them into their particular arraylist
  Plants() {
    good = new PImage[editableNames.length];
    bad = new PImage[poisonNames.length];
    for(int i = 0; i < poisonNames.length; i++){
       bad[i] = loadImage(poisonNames[i]);
    }
    for(int i = 0; i < editableNames.length; i++){
       good[i] = loadImage(editableNames[i]); 
    }
  }
  
  PImage getRandGoodImg(){
      int x = (int) random(good.length);
      return good[x];
  }  
  
  PImage getRandBadImg(){
     int x = (int) random(bad.length);
     return bad[x];
  }
}
