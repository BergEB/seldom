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
      qCam.position.x = -850 + (243 * (galleryNum));
      qCam.position.y = 0;
      qCam.position.z = -725;
      qCam.pan = -PI/2;
      qCam.tilt = 0;
      qCam.speed = 0;
    }
    if (mousePressed && mouseButton == RIGHT && buttonStatus == true) {
      buttonStatus = false;
      qCam.speed = 3; // need to create a way for only one of the button instance variables to be active at a time
    }
    
  }
  
  void buttonStatus() {
    if (buttonStatus == true) {
      display();
    }
  }
  
  void button() {
    if (buttonStatus == true) {
      pushMatrix();
      display();
      popMatrix();
    }
  }
  
  void display() {
    //translate(30, -60, 0); //should be the point at the center of each window/frame (see where button method is used in lobby)
    if (galleryNum == 1) {
      pushMatrix();
      translate(-1000, -100, -2000);
      t0.display();
      popMatrix();
    }
    if (galleryNum == 2) {
      pushMatrix();
      translate(-1250, -200, -1000);
      polyThree.display();
      popMatrix();
    }
    if (galleryNum == 3) {
      pushMatrix();
      translate(-1000, -200, -1000);
      polyFour.display();
      popMatrix();
    }
    if (galleryNum == 4) {
      pushMatrix();
      translate(-750, -200, -1000);
      polyFive.display();
      popMatrix();
    }
    if (galleryNum == 5) {
      pushMatrix();
      translate(-500, -200, -1000);
      polySix.display();
      popMatrix();
    }
    if (galleryNum == 6) {
      pushMatrix();
      translate(118, -5, -775);
      spiral.display();
      popMatrix();
    }
  }
}
