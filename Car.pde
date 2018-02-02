class Car {
  float posX;
  float posY;
  
  float sideLength = 50;
  
  float speed;
  
  // Color Properties
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  
  Car(float x, float y, float s) {
    this.posX = x;
    this.posY = y;
    this.speed = s;
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
  
  void scale() {
    
  }
  
  boolean hitsPlayer(Player player) {
    return !(this.posX > player.posX + player.sideLength ||
             this.posX + this.sideLength < player.posX ||
             this.posY > player.posY + player.sideLength ||
             this.posY + this.sideLength < player.posY);
  }
}