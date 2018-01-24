Player playerIcon;
Car testCar;

void setup() {
   size(600, 600);
   
    playerIcon = new Player(width / 2, height - 25);
    testCar = new Car(width / 2, height / 2);
}

void draw() {
   background(#E0E0E0);
   
   // Draw player icon
   playerIcon.show();
   playerIcon.update();
   
   // Draw vehicles for player to dodge
   testCar.update();
   testCar.show();
}

void keyPressed() {
  switch (keyCode) {
    case LEFT:
      playerIcon.jump(3);
    break;
    case RIGHT: 
      playerIcon.jump(4);
    break;
    case UP:
      playerIcon.jump(1);
    break;
    case DOWN:
      playerIcon.jump(2);
    break;
  }
}