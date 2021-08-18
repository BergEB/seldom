class gallery {
  boolean interactable; //0 is not pushed, 1 is pushed
  boolean buttonStatus;
  int galleryNum;
  //private PVector offset;
  
  gallery(int galleryNumber) {
    galleryNum = galleryNumber;
    buttonStatus = false;
  }
  
  void interactable(float targetX, float targetY, float targetZ, float boundsX, float boundsY) {
    if (screenX(targetX, targetY, targetZ) > (width / 2) - boundsX && screenX(targetX, targetY, targetZ) < (width / 2) + boundsX && screenY(targetX, targetY, targetZ) > (height / 2) - boundsY && screenY(targetX, targetY, targetZ) < (height / 2) + boundsY) {
      interactable = true;
      hud.interactable[galleryNum - 1] = true;
      main();
    } else {
      interactable = false;
      hud.interactable[galleryNum - 1] = false;
    }
  }  
  
  void main() {
    if (mousePressed && mouseButton == LEFT && buttonStatus == false) {
      buttonStatus = true;
      qCam.position.x = 193 + (243 * (galleryNum - 1));
      qCam.position.y = 200;
      qCam.position.z = 100;
      qCam.pan = -PI/2;
      qCam.tilt = 0;
      qCam.speed = 0;
    }
    if (mousePressed && mouseButton == RIGHT && buttonStatus == true) {
      buttonStatus = false;
      qCam.speed = 3; // need to create a way for only one of the button instance variables to be active at a time
    }
    
  }
  
  void button() {
    if (buttonStatus == true) {
      fill(80);
      box(20, 8, 2);
      fill(0);
      pushMatrix();
      display();
      popMatrix();
    } else {
      box(20, 8, 6);
    }
  }
  
  void display() {
    translate(30, -60, 0); //should be the point at the center of each window/frame (see where button method is used in lobby)
    if (galleryNum == 1) {
      
    }
    if (galleryNum == 2) {
      
    }
    if (galleryNum == 3) {
      
    }
    if (galleryNum == 4) {
      
    }
    if (galleryNum == 5) {
      
    }
    if (galleryNum == 6) {
      
    }
  }
}
