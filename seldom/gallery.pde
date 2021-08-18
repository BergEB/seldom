class gallery {
  private boolean interactable;
  private boolean buttonStatus; //0 is not pushed, 1 is pushed
  private int galleryNum;
  //private PVector offset;
  
  gallery(int galleryNumber) {
    galleryNum = galleryNumber;
    this.buttonStatus = false;
  }
  
  void interactable(float targetX, float targetY, float targetZ, float boundsX, float boundsY) {
    if (screenX(targetX, targetY, targetZ) > (width / 2) - boundsX && screenX(targetX, targetY, targetZ) < (width / 2) + boundsX && screenY(targetX, targetY, targetZ) > (height / 2) - boundsY && screenY(targetX, targetY, targetZ) < (height / 2) + boundsY) {
      this.interactable = true;
      hud.interactable[galleryNum - 1] = true;
      this.main();
    } else {
      this.interactable = false;
      hud.interactable[galleryNum - 1] = false;
      this.main();
    }
  }  
  
  void main() {
    if (mousePressed && mouseButton == LEFT) {
      this.buttonStatus = true;
    }
    if (mousePressed && mouseButton == RIGHT) {
      this.buttonStatus = false;
    }
    
  }
  
  void button() {
    if (this.buttonStatus == true) {
      box(20, 8, 2);
    } else {
      box(20, 8, 6);
    }
  }
  
  void display() {
    
  }
}
