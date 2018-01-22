class Player {
  float posX;
  float posY;
  
  float sideLength = 50;
  
  float velocityX = 0;
  float velocityY = 0;
  
  float movementForce = 25;
  float resistance = 0.9;
  
  
  Player(float x, float y) {
    this.posX = x;
    this.posY = y;
  }
  
  void update() {
    
  }
  
  void show() {
    noStroke();
    fill(0, 255, 0);
    rect(this.posX - this.sideLength / 2, this.posY - this.sideLength / 2, this.sideLength, this.sideLength);
  }
  
  // Behavioural methods:
  
  
}