Player playerIcon;
ArrayList<Car> cars;

int offsetY;

void setup() {
   size(600, 600);
   
   playerIcon = new Player(width / 2, height - 25);
    
   cars = new ArrayList<Car>();
   
   int margin = 75;
   offsetY = height - margin;
   int offsetIncrement = 50;

   for (int i = 0; i < 10; i++) {
      cars.add(new Car(random(0, width), offsetY));
      offsetY -= offsetIncrement;
   }
}

void draw() {
   background(#E0E0E0);
   
   // Draw player icon
   playerIcon.show();
   playerIcon.update();
   
   if (playerIcon.posY < height / 2) {
     playerIcon.scale();
     
     for (int i = 0; i < cars.size(); i++) {
        Car currentCar = cars.get(i);
        currentCar.scale();
     }
   }
   
   // Draw vehicles for player to dodge
   for (int i = 0; i < cars.size(); i++) {
     Car currentCar = cars.get(i);
     
     currentCar.update();
     currentCar.show();
     currentCar.edges();
   }
   
   // Control car behaviours 
   for (int i = 0; i < cars.size(); i++) {
     Car currentCar = cars.get(i);
     
     if (currentCar.hitsPlayer(playerIcon)) {
       playerIcon.posX = width / 2;
       playerIcon.posY = height - 25;
     }
     
     if (currentCar.posY > height) {
       cars.remove(currentCar);
       
       for (int j = 0; j < 3; j++) {
         cars.add(new Car(random(0, width), offsetY));
         offsetY -= 50;
       }
     }
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