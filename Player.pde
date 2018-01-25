class Player {
  float posX;
  float posY;
  
  float sideLength = 50;
  
  // Movement Engine
  float velocityX = 0;
  float velocityY = 0;
  
  float movementForce = 10;
  float trim = 0.9;
  
  
  Player(float x, float y) {
    this.posX = x;
    this.posY = y;
  }
  
  void update() {
    this.posY += this.velocityY;
    this.velocityY *= this.trim;
    
    this.posX += this.velocityX;
    this.velocityX *= this.trim;
  }
  
  void show() {
    noStroke();
    fill(0, 255, 0);
    rect(this.posX - this.sideLength / 2, this.posY - this.sideLength / 2, this.sideLength, this.sideLength);
  }
  
  // Behavioural methods:
  void jump(int direction) {
    switch (direction) {
      case 1: // Up
        this.velocityY += -this.movementForce;
      break;
      case 2: // Down
        this.velocityY += this.movementForce;
      break;
      case 3: // Left
        this.velocityX += -this.movementForce;
      break;
      case 4: // Right
        this.velocityX += this.movementForce;
      break;
    }
  }
}