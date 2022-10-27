void coordCompass() {
  strokeWeight(5);
    
  //+X
  stroke(255, 0, 0);
  line(0, 0, 0, 250, 0, 0);
  //+Y
  stroke(0, 255, 0);
  line(0, 0, 0, 0, 250, 0);
  //+Z
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, 250);
}
