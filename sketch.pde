Player playerIcon;

void setup() {
   size(600, 600);
    playerIcon = new Player(width / 2, height / 2);
}

void draw() {
   background(#E0E0E0);
   playerIcon.show();
}

void keyPressed() {
  
}