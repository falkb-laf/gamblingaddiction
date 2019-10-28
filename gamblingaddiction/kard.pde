class kard{
  String suit;
  String value;
  boolean faceUp;
  int xLoc, yLoc;
  int w,h;
  PImage up;
  PImage down;
  PImage show;
  boolean isJoker;
  
  kard(String suit, String value, boolean faceUp, int xLoc, int yLoc, int w, int h, boolean isJoker){
    this.suit=suit;
    this.value = value;
    this.faceUp=faceUp;
    this.xLoc=xLoc;
    this.yLoc = yLoc;
    this.w=w;
    this.h=h;
    this.isJoker = isJoker;
    down = loadImage("back.png");
    down.resize(w, h);
    if (!isJoker) {
      up = loadImage(value + "_of_" + suit + ".png");
      up.resize(w, h);
    } else {
      if (suit.equals("spades") || suit.equals("clubs")) {
        up = loadImage("black_joker.png");
        up.resize(w, h);
      } else if (suit.equals("hearts") || suit.equals("diamonds")) {
        up = loadImage("red_joker.png");
        up.resize(w, h);
      }
    }
    
    display();
  }
  
  void display() {
    if (faceUp){
      this.show = up;
      image(up, xLoc, yLoc);
    }
    else{
      this.show = down;
      image(down, xLoc, yLoc);
    }
  }
  
  void flip() {
    faceUp=!faceUp;
}
}
