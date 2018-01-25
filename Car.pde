class Car {
  float posX;
  float posY;
  
  float sideLength = 50;
  
  float speed;
  
  // Color Properties
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  
  Car(float x, float y) {
    this.posX = x;
    this.posY = y;
    
    speed = random(-5, 5);
    
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
    fill(this.r, this.g, this.b);
    rect(this.posX - this.sideLength / 2, this.posY - this.sideLength / 2, this.sideLength, this.sideLength);
  }
  
  // Behavioural methods:
  
  void edges() {
     if (this.posX + this.sideLength / 2 < 0) {
       this.posX = width + this.sideLength / 2;
     } else if (this.posX - this.sideLength / 2 > width) {
       this.posX = -this.sideLength / 2;
     }
  }
}