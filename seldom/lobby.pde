public class lobby {
  //private boolean lightswitch;
  PShape lobby_walls;
  
  lobby() {
    //lightswitch = true;
  }
  
  void display() {
    buttons();
    //lightSwitch();
  }
  
  void buttons() {
    pushMatrix();
    translate(800, 400, 800);
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
  }
  
  public void wallsCreate(PGraphics3D canvas) {
    if(lobby_walls != null){
      canvas.shape(lobby_walls);
      return;
    }
    
    lobby_walls = createShape(GROUP);
    
    // 14 boxes in total, there may be a way to automate their creation, but for now there are more important things at hand
    fill(100, 0, 100);  //  Development color, not for release
    noStroke();
    
    
    PShape wall_rect1 = createShape();    //floor
    wall_rect1.beginShape();
    wall_rect1.vertex(-800, 200, -800);
    wall_rect1.vertex(-800, 200, 800);
    wall_rect1.vertex(800, 200, 800);
    wall_rect1.vertex(800, 200, -800);
    wall_rect1.endShape(CLOSE);
    lobby_walls.addChild(wall_rect1);
    
    PShape wall_rect2 = createShape();    //ceiling
    wall_rect2.beginShape();
    wall_rect2.vertex(-800, -200, -800);
    wall_rect2.vertex(-800, -200, 800);
    wall_rect2.vertex(800, -200, 800);
    wall_rect2.vertex(800, -200, -800);
    wall_rect2.endShape(CLOSE);
    lobby_walls.addChild(wall_rect2);
    
    
    PShape wall_rect3 = createShape();   // front wall top strip
    wall_rect3.beginShape();
    wall_rect3.vertex(-800, -200, -800);
    wall_rect3.vertex(800, -200, -800);
    wall_rect3.vertex(800, -50, -800);
    wall_rect3.vertex(-800, -50, -800);
    wall_rect3.endShape(CLOSE);
    lobby_walls.addChild(wall_rect3);
    
    PShape wall_rect4 = createShape();  // front wall bottom strip
    wall_rect4.beginShape();
    wall_rect4.vertex(-800, 200, -800);
    wall_rect4.vertex(800, 200, -800);
    wall_rect4.vertex(800, 50, -800);
    wall_rect4.vertex(-800, 50, -800);
    wall_rect4.endShape(CLOSE);
    lobby_walls.addChild(wall_rect4);
    
    
    float window_gap = 1000.0/7.0;
    
    PShape wall_rect5 = createShape();
    wall_rect5.beginShape();
    wall_rect5.vertex(800, -50, -800);
    wall_rect5.vertex(800.0-window_gap, -50, -800);
    wall_rect5.vertex(800.0-window_gap, 50, -800);
    wall_rect5.vertex(800, 50, -800);
    wall_rect5.endShape(CLOSE);
    lobby_walls.addChild(wall_rect5);
    
    PShape wall_rect6 = createShape();          // front walls between windows
    wall_rect6.beginShape();
    wall_rect6.vertex(800.0-(window_gap+100), -50, -800);
    wall_rect6.vertex(800.0-((window_gap*2.0)+(100)), -50, -800);
    wall_rect6.vertex(800.0-((window_gap*2.0)+(100)), 50, -800);
    wall_rect6.vertex(800.0-(window_gap+100), 50, -800);
    wall_rect6.endShape(CLOSE);
    lobby_walls.addChild(wall_rect6);
    
    PShape wall_rect7 = createShape();
    wall_rect7.beginShape();
    wall_rect7.vertex(800.0-((window_gap*2.0)+(100*2)), -50, -800);
    wall_rect7.vertex(800.0-((window_gap*3.0)+(100*2)), -50, -800);
    wall_rect7.vertex(800.0-((window_gap*3.0)+(100*2)), 50, -800);
    wall_rect7.vertex(800.0-((window_gap*2.0)+(100*2)), 50, -800);
    wall_rect7.endShape(CLOSE);
    lobby_walls.addChild(wall_rect7);

    PShape wall_rect8 = createShape();
    wall_rect8.beginShape();
    wall_rect8.vertex(800.0-((window_gap*3.0)+(100*3)), -50, -800);
    wall_rect8.vertex(800.0-((window_gap*4.0)+(100*3)), -50, -800);
    wall_rect8.vertex(800.0-((window_gap*4.0)+(100*3)), 50, -800);
    wall_rect8.vertex(800.0-((window_gap*3.0)+(100*3)), 50, -800);
    wall_rect8.endShape(CLOSE);
    lobby_walls.addChild(wall_rect8);
    
    PShape wall_rect9 = createShape();
    wall_rect9.beginShape();
    wall_rect9.vertex(800.0-((window_gap*4.0)+(100*4)), -50, -800);
    wall_rect9.vertex(800.0-((window_gap*5.0)+(100*4)), -50, -800);
    wall_rect9.vertex(800.0-((window_gap*5.0)+(100*4)), 50, -800);
    wall_rect9.vertex(800.0-((window_gap*4.0)+(100*4)), 50, -800);
    wall_rect9.endShape(CLOSE);
    lobby_walls.addChild(wall_rect9);
    
    PShape wall_rect10 = createShape();
    wall_rect10.beginShape();
    wall_rect10.vertex(800.0-((window_gap*5.0)+(100*5)), -50, -800);
    wall_rect10.vertex(800.0-((window_gap*6.0)+(100*5)), -50, -800);
    wall_rect10.vertex(800.0-((window_gap*6.0)+(100*5)), 50, -800);
    wall_rect10.vertex(800.0-((window_gap*5.0)+(100*5)), 50, -800);
    wall_rect10.endShape(CLOSE);
    lobby_walls.addChild(wall_rect10);
    
    PShape wall_rect11 = createShape();
    wall_rect11.beginShape();
    wall_rect11.vertex(800.0-((window_gap*6.0)+(100*6)), -50, -800);
    wall_rect11.vertex(800.0-((window_gap*7.0)+(100*6)), -50, -800);
    wall_rect11.vertex(800.0-((window_gap*7.0)+(100*6)), 50, -800);
    wall_rect11.vertex(800.0-((window_gap*6.0)+(100*6)), 50, -800);
    wall_rect11.endShape(CLOSE);
    lobby_walls.addChild(wall_rect11);
    
    
    PShape wall_rect12 = createShape();    // close wall
    wall_rect12.beginShape();
    wall_rect12.vertex(-800, -200, 800);
    wall_rect12.vertex(800, -200, 800);
    wall_rect12.vertex(800, 200, 800);
    wall_rect12.vertex(-800, 200, 800);
    wall_rect12.endShape(CLOSE);
    lobby_walls.addChild(wall_rect12);
    
    PShape wall_rect13 = createShape();    // right wall
    wall_rect13.beginShape();
    wall_rect13.vertex(800, -200, -800);
    wall_rect13.vertex(800, -200, 800);
    wall_rect13.vertex(800, 200, 800);
    wall_rect13.vertex(800, 200, -800);
    wall_rect13.endShape(CLOSE);
    lobby_walls.addChild(wall_rect13);
    
    PShape wall_rect14 = createShape();    // left wall
    wall_rect14.beginShape();
    wall_rect14.vertex(-800, -200, 800);
    wall_rect14.vertex(-800, -200, -800);
    wall_rect14.vertex(-800, 200, -800);
    wall_rect14.vertex(-800, 200, 800);
    wall_rect14.endShape(CLOSE);
    lobby_walls.addChild(wall_rect14);
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
