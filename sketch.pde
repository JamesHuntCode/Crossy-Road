Player playerIcon;

void setup() {
   size(600, 600);
   
    playerIcon = new Player(width / 2, height - 25);
}

void draw() {
   background(#E0E0E0);
   
   playerIcon.show();
   playerIcon.update();
}

void keyPressed() {
  switch (keyCode) {
    case LEFT:
      playerIcon.jump(2);
    break;
    case RIGHT: 
      playerIcon.jump(3);
    break;
    case UP:
      playerIcon.jump(1);
    break;
  }
}