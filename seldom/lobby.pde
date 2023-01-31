public class lobby {
  //private boolean lightswitch;
  PShape lobby_walls;
  PShape lobby_buttons;
  PShape spiral_buttons;
  
  lobby() {
    //lightswitch = true;
  }
  
  void display() {
    buttons();
    //lightSwitch();
  }
  
  
  public void spiralButtonsCreate(PGraphics3D canvas) {
    if(spiral_buttons != null){
      canvas.shape(spiral_buttons);
      return;
    }
   
    fill(0, 0, 0);  // Development color, not for release
    noStroke();
    
    spiral_buttons = createShape(GROUP);
   
    PShape spiral_button1 = createShape();
    spiral_button1.beginShape(TRIANGLE_STRIP);
    spiral_button1.vertex(566.0,73.0,-796.0);
    spiral_button1.vertex(574.0,73.0,-796.0);
    spiral_button1.vertex(566.0,81.0,-796.0);
    spiral_button1.vertex(574.0,81.0,-796.0);
    spiral_button1.vertex(574.0,81.0,-800.0);
    spiral_button1.vertex(574.0,73.0,-796.0);
    spiral_button1.vertex(574.0,73.0,-800.0);
    spiral_button1.vertex(566.0,73.0,-796.0);
    spiral_button1.vertex(566.0,73.0,-800.0);
    spiral_button1.vertex(566.0,81.0,-796.0);
    spiral_button1.vertex(566.0,81.0,-800.0);
    spiral_button1.vertex(574.0,81.0,-800.0);
    spiral_button1.vertex(566.0,73.0,-800.0);
    spiral_button1.vertex(574.0,73.0,-800.0);
    spiral_button1.endShape();
    spiral_buttons.addChild(spiral_button1);
    PShape spiral_button2 = createShape();
    spiral_button2.beginShape(TRIANGLE_STRIP);
    spiral_button2.vertex(578.0,73.0,-796.0);
    spiral_button2.vertex(586.0,73.0,-796.0);
    spiral_button2.vertex(578.0,81.0,-796.0);
    spiral_button2.vertex(586.0,81.0,-796.0);
    spiral_button2.vertex(586.0,81.0,-800.0);
    spiral_button2.vertex(586.0,73.0,-796.0);
    spiral_button2.vertex(586.0,73.0,-800.0);
    spiral_button2.vertex(578.0,73.0,-796.0);
    spiral_button2.vertex(578.0,73.0,-800.0);
    spiral_button2.vertex(578.0,81.0,-796.0);
    spiral_button2.vertex(578.0,81.0,-800.0);
    spiral_button2.vertex(586.0,81.0,-800.0);
    spiral_button2.vertex(578.0,73.0,-800.0);
    spiral_button2.vertex(586.0,73.0,-800.0);
    spiral_button2.endShape();
    spiral_buttons.addChild(spiral_button2);
    PShape spiral_button3 = createShape();
    spiral_button3.beginShape(TRIANGLE_STRIP);
    spiral_button3.vertex(578.0,85.0,-796.0);
    spiral_button3.vertex(586.0,85.0,-796.0);
    spiral_button3.vertex(578.0,93.0,-796.0);
    spiral_button3.vertex(586.0,93.0,-796.0);
    spiral_button3.vertex(586.0,93.0,-800.0);
    spiral_button3.vertex(586.0,85.0,-796.0);
    spiral_button3.vertex(586.0,85.0,-800.0);
    spiral_button3.vertex(578.0,85.0,-796.0);
    spiral_button3.vertex(578.0,85.0,-800.0);
    spiral_button3.vertex(578.0,93.0,-796.0);
    spiral_button3.vertex(578.0,93.0,-800.0);
    spiral_button3.vertex(586.0,93.0,-800.0);
    spiral_button3.vertex(578.0,85.0,-800.0);
    spiral_button3.vertex(586.0,85.0,-800.0);
    spiral_button3.endShape();
    spiral_buttons.addChild(spiral_button3);
    PShape spiral_button4 = createShape();
    spiral_button4.beginShape(TRIANGLE_STRIP);
    spiral_button4.vertex(566.0,85.0,-796.0);
    spiral_button4.vertex(574.0,85.0,-796.0);
    spiral_button4.vertex(566.0,93.0,-796.0);
    spiral_button4.vertex(574.0,93.0,-796.0);
    spiral_button4.vertex(574.0,93.0,-800.0);
    spiral_button4.vertex(574.0,85.0,-796.0);
    spiral_button4.vertex(574.0,85.0,-800.0);
    spiral_button4.vertex(566.0,85.0,-796.0);
    spiral_button4.vertex(566.0,85.0,-800.0);
    spiral_button4.vertex(566.0,93.0,-796.0);
    spiral_button4.vertex(566.0,93.0,-800.0);
    spiral_button4.vertex(574.0,93.0,-800.0);
    spiral_button4.vertex(566.0,85.0,-800.0);
    spiral_button4.vertex(574.0,85.0,-800.0);
    spiral_button4.endShape();
    spiral_buttons.addChild(spiral_button4);

    }
   
    public void lobbyButtonsCreate(PGraphics3D canvas) {
      if(lobby_buttons != null){
        canvas.shape(lobby_buttons);
        return;
      }
    lobby_buttons = createShape(GROUP); 
    
    fill(0, 0, 0);  // Development color, not for release
    noStroke();
    
    PShape frame_button1 = createShape();
    frame_button1.beginShape(TRIANGLE_STRIP);
    frame_button1.vertex(-649, 56, -796);
    frame_button1.vertex(-629, 56, -796);
    frame_button1.vertex(-649, 66, -796);
    frame_button1.vertex(-629, 66, -796);
    frame_button1.vertex(-629, 66, -800);
    frame_button1.vertex(-629, 56, -796);
    frame_button1.vertex(-629, 56, -800);
    frame_button1.vertex(-649, 56, -796);
    frame_button1.vertex(-649, 56, -800);
    frame_button1.vertex(-649, 66, -796);
    frame_button1.vertex(-649, 66, -800);
    frame_button1.vertex(-629, 66, -800);
    frame_button1.vertex(-649, 56, -800);
    frame_button1.vertex(-629, 56, -800);
    frame_button1.endShape();
    lobby_buttons.addChild(frame_button1);
    
    PShape frame_button2 = createShape();
    frame_button2.beginShape(TRIANGLE_STRIP);
    frame_button2.vertex(-649+(243*1), 56, -796);
    frame_button2.vertex(-629+(243*1), 56, -796);
    frame_button2.vertex(-649+(243*1), 66, -796);
    frame_button2.vertex(-629+(243*1), 66, -796);
    frame_button2.vertex(-629+(243*1), 66, -800);
    frame_button2.vertex(-629+(243*1), 56, -796);
    frame_button2.vertex(-629+(243*1), 56, -800);
    frame_button2.vertex(-649+(243*1), 56, -796);
    frame_button2.vertex(-649+(243*1), 56, -800);
    frame_button2.vertex(-649+(243*1), 66, -796);
    frame_button2.vertex(-649+(243*1), 66, -800);
    frame_button2.vertex(-629+(243*1), 66, -800);
    frame_button2.vertex(-649+(243*1), 56, -800);
    frame_button2.vertex(-629+(243*1), 56, -800);
    frame_button2.endShape();
    lobby_buttons.addChild(frame_button2);
    
    PShape frame_button3 = createShape();
    frame_button3.beginShape(TRIANGLE_STRIP);
    frame_button3.vertex(-649+(243*2), 56, -796);
    frame_button3.vertex(-629+(243*2), 56, -796);
    frame_button3.vertex(-649+(243*2), 66, -796);
    frame_button3.vertex(-629+(243*2), 66, -796);
    frame_button3.vertex(-629+(243*2), 66, -800);
    frame_button3.vertex(-629+(243*2), 56, -796);
    frame_button3.vertex(-629+(243*2), 56, -800);
    frame_button3.vertex(-649+(243*2), 56, -796);
    frame_button3.vertex(-649+(243*2), 56, -800);
    frame_button3.vertex(-649+(243*2), 66, -796);
    frame_button3.vertex(-649+(243*2), 66, -800);
    frame_button3.vertex(-629+(243*2), 66, -800);
    frame_button3.vertex(-649+(243*2), 56, -800);
    frame_button3.vertex(-629+(243*2), 56, -800);
    frame_button3.endShape();
    lobby_buttons.addChild(frame_button3);
    
    PShape frame_button4 = createShape();
    frame_button4.beginShape(TRIANGLE_STRIP);
    frame_button4.vertex(-649+(243*3), 56, -796);
    frame_button4.vertex(-629+(243*3), 56, -796);
    frame_button4.vertex(-649+(243*3), 66, -796);
    frame_button4.vertex(-629+(243*3), 66, -796);
    frame_button4.vertex(-629+(243*3), 66, -800);
    frame_button4.vertex(-629+(243*3), 56, -796);
    frame_button4.vertex(-629+(243*3), 56, -800);
    frame_button4.vertex(-649+(243*3), 56, -796);
    frame_button4.vertex(-649+(243*3), 56, -800);
    frame_button4.vertex(-649+(243*3), 66, -796);
    frame_button4.vertex(-649+(243*3), 66, -800);
    frame_button4.vertex(-629+(243*3), 66, -800);
    frame_button4.vertex(-649+(243*3), 56, -800);
    frame_button4.vertex(-629+(243*3), 56, -800);
    frame_button4.endShape();
    lobby_buttons.addChild(frame_button4);
    
    PShape frame_button5 = createShape();
    frame_button5.beginShape(TRIANGLE_STRIP);
    frame_button5.vertex(-649+(243*4), 56, -796);
    frame_button5.vertex(-629+(243*4), 56, -796);
    frame_button5.vertex(-649+(243*4), 66, -796);
    frame_button5.vertex(-629+(243*4), 66, -796);
    frame_button5.vertex(-629+(243*4), 66, -800);
    frame_button5.vertex(-629+(243*4), 56, -796);
    frame_button5.vertex(-629+(243*4), 56, -800);
    frame_button5.vertex(-649+(243*4), 56, -796);
    frame_button5.vertex(-649+(243*4), 56, -800);
    frame_button5.vertex(-649+(243*4), 66, -796);
    frame_button5.vertex(-649+(243*4), 66, -800);
    frame_button5.vertex(-629+(243*4), 66, -800);
    frame_button5.vertex(-649+(243*4), 56, -800);
    frame_button5.vertex(-629+(243*4), 56, -800);
    frame_button5.endShape();
    lobby_buttons.addChild(frame_button5);
    
    PShape frame_button6 = createShape();
    frame_button6.beginShape(TRIANGLE_STRIP);
    frame_button6.vertex(-649+(243*5), 56, -796);
    frame_button6.vertex(-629+(243*5), 56, -796);
    frame_button6.vertex(-649+(243*5), 66, -796);
    frame_button6.vertex(-629+(243*5), 66, -796);
    frame_button6.vertex(-629+(243*5), 66, -800);
    frame_button6.vertex(-629+(243*5), 56, -796);
    frame_button6.vertex(-629+(243*5), 56, -800);
    frame_button6.vertex(-649+(243*5), 56, -796);
    frame_button6.vertex(-649+(243*5), 56, -800);
    frame_button6.vertex(-649+(243*5), 66, -796);
    frame_button6.vertex(-649+(243*5), 66, -800);
    frame_button6.vertex(-629+(243*5), 66, -800);
    frame_button6.vertex(-649+(243*5), 56, -800);
    frame_button6.vertex(-629+(243*5), 56, -800);
    frame_button6.endShape();
    lobby_buttons.addChild(frame_button6);
  }
  
  
  
  
  public void wallsCreate(PGraphics3D canvas) {
    if(lobby_walls != null){
      canvas.shape(lobby_walls);
      return;
    }
    
    lobby_walls = createShape(GROUP);
    
    // 14 boxes in total
    fill(100, 100, 100);  //  Development color, not for release
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
  
  void buttons() {
    spiralMinusX.interactable(570, 77, -798, 8, 8);
    spiralPlusX.interactable(582, 77, -798, 8, 8);
    spiralMinusY.interactable(582, 89, -798, 8, 8);
    spiralPlusY.interactable(570, 89, -798, 8, 8);
    galleryOne.interactable(-639, 61, -798, 20, 10);   //eventually can move these interactable lines within the button class itself
    galleryTwo.interactable(-639+(243*1), 61, -798, 20, 10);
    galleryThree.interactable(-639+(243*2), 61, -798, 20, 10);
    galleryFour.interactable(-639+(243*3), 61, -798, 20, 10);
    galleryFive.interactable(-639+(243*4), 61, -798, 20, 10);
    gallerySix.interactable(-639+(243*5), 61, -798, 20, 10);
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
