class button {
  boolean interactable; //0 is not pushed, 1 is pushed
  boolean buttonPressAvailable;
  int buttonPressCooldown = 100;
  int lastButtonPress;
  int buttonNum;
  
  button(int n) {
    buttonNum = n;
    if (millis()-lastButtonPress > buttonPressCooldown) {
      buttonPressAvailable = true;
    }
  }
  
  void interactable(float targetX, float targetY, float targetZ, float boundsX, float boundsY) {
    if (screenX(targetX, targetY, targetZ) > (width / 2) - boundsX && screenX(targetX, targetY, targetZ) < (width / 2) + boundsX && screenY(targetX, targetY, targetZ) > (height / 2) - boundsY && screenY(targetX, targetY, targetZ) < (height / 2) + boundsY) {
      interactable = true;
      hud.interactable[buttonNum - 1] = true;
      main();
    } else {
      interactable = false;
      hud.interactable[buttonNum - 1] = false;
    }
  }  
  
  void main() {
    if (mousePressed && mouseButton == LEFT) {
      if (buttonPressAvailable) {
        lastButtonPress = millis();
        if (buttonNum==7) spiral.zRotationSpeed-=0.000005;
        if (buttonNum==8) spiral.zRotationSpeed+=0.000005;
        if (buttonNum==9) spiral.yRotationSpeed+=0.000005;
        if (buttonNum==10) spiral.yRotationSpeed-=0.000005;
      }
    }
    
  }
}
