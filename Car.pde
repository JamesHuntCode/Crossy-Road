class Car {
  float posX;
  float posY;
  
  float sideLength = 50;
  
  float speed;
  
  Car(float x, float y) {
    this.posX = x;
    this.posY = y;
    
    speed = random(-8, 8);
    
    if (speed > -2 && speed < 2) {
      if (random(1) > 0.5) {
        speed = 3;
      } else {
        speed = -3;
      }
    }
  }
  
  void update() {
    this.posX += this.speed;
  }
  
  void show() {
    noStroke();
    fill(255, 0, 0);
    rect(this.posX - this.sideLength / 2, this.posY - this.sideLength / 2, this.sideLength, this.sideLength);
  }
  
  // Behavioural methods:
  
  
}