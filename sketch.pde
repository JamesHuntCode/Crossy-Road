Player playerIcon;
ArrayList<Car> cars;

void setup() {
   size(600, 600);
   
   playerIcon = new Player(width / 2, height - 25);
    
   cars = new ArrayList<Car>();
   
   int margin = 75;
   int offsetY = height - margin;
   int offsetIncrement = 50;
   
   for (int i = 0; i < 10; i++) {
     cars.add(new Car(width / 2, offsetY));
     offsetY -= offsetIncrement;
   }
}

void draw() {
   background(#E0E0E0);
   
   // Draw player icon
   playerIcon.show();
   playerIcon.update();
   
   // Draw vehicles for player to dodge
   for (int i = 0; i < cars.size(); i++) {
     Car currentCar = cars.get(i);
     
     currentCar.update();
     currentCar.show();
     currentCar.edges();
   }
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