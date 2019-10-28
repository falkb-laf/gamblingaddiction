kard playingCard;

void setup() {
  size(1000, 1000);
  
   playingCard = new kard("spades", "4", true, 0, 0, 500, 726, true);
  
}

void draw() {
  background(255);
  
  playingCard.display();
}

void mouseClicked() {
    playingCard.flip();
  }
