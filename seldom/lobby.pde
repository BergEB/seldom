public class lobby {
  //private boolean lightswitch;
  
  lobby() {
    //lightswitch = true;
  }
  
  void display() {
    walls();
    //lightSwitch();
  }
  
  void walls() {
    //if (lightswitch == false) {
    //  specular(0, 0, 0);
    //}
    fill(0);
    noStroke();
    translate(800, 400, 800);
    box(1600, 0, 1600);    //floor
    pushMatrix();
    translate(0, -400, 0);
    box(1600, 0, 1600);
    popMatrix();
    translate(-800, -400, -800);
    translate(800, 200, 0);
    
    pushMatrix();
    translate(0, -125, 0);
    box(1600, 150, 0);
    translate(0, 250, 0);
    box(1600, 150, 0);
    popMatrix();
    pushMatrix();
    translate(-728.5, 0, 0);
    box(143, 100, 0);
    translate(243, 0, 0);
    box(143, 100, 0);          //front wall
    translate(243, 0, 0);
    box(143, 100, 0);
    translate(243, 0, 0);
    box(143, 100, 0);
    translate(243, 0, 0);
    box(143, 100, 0);
    translate(243, 0, 0);
    box(143, 100, 0);
    translate(242.5, 0, 0);
    box(142, 100, 0);
    popMatrix();
    
    pushMatrix();
    translate(-637, 60, 0);
    galleryOne.button();
    galleryOne.interactable(0, 0, 0, 22, 10);   //eventually can move these interactable lines within the button class itself
    translate(243, 0, 0);
    galleryTwo.button();
    galleryTwo.interactable(0, 0, 0, 22, 10);
    translate(243, 0, 0);
    galleryThree.button();
    galleryThree.interactable(0, 0, 0, 22, 10);
    translate(243, 0, 0);
    galleryFour.button();
    galleryFour.interactable(0, 0, 0, 22, 10);
    translate(243, 0, 0);
    galleryFive.button();
    galleryFive.interactable(0, 0, 0, 22, 10);
    translate(243, 0, 0);
    gallerySix.button();
    gallerySix.interactable(0, 0, 0, 22, 10);
    popMatrix();
    
    translate(0, 0, 1600);
    box(1600, 400, 0);    //close wall
    translate(-800, -200, -1600);
    translate(0, 200, 800);
    box(0, 400, 1600);    //right wall
    translate(1600, 0, 0);
    box(0, 400, 1600);    //left wall
    translate(-1600, -200, -800);
  }
  
  //void lightSwitch() {
  //  if (mouseWithin(1152.0, 530.0, 1186.0, 569.0)) {
  //    l.interactLight();
  //  }
  //  pushMatrix();
  //  translate(1000, 210, -2);
  //  box(32, 40, 6);
  //  interactable(0, 0, 0, 32, 40);
  //  if (lightswitch) {
  //    ambient(0, 100, 0);
  //    specular(0, 150, 0);
  //    rotateX(-PI/5);
  //  }
  //  else {
  //    specular(100, 0, 0);
  //    rotateX(PI/5);
  //  }
  //  shininess(4.0);
  //  box(8, 20, 8);
  //  ambient(0, 0, 0);
  //  popMatrix();
  //}
  
  
  
  //void interactLight() {
  //  if (l.lightswitch && mousePressed && mouseButton == RIGHT) {
  //    l.lightswitch = false;
  //  }
  //  if (!l.lightswitch && mousePressed && mouseButton == LEFT) {
  //    l.lightswitch = true;
  //  }
  //}
}
