class TriaFlow {
  float R;
  float R1;
  float rAcc;
  int spacing;
  int iterationSize;
  int polygons;
  private int s;
  private float staticStroke;
  
  TriaFlow(int sides) {
    R = 0;
    R1 = 0;
    rAcc = PI / 50000;
    spacing = 8;
    iterationSize = 5;
    polygons = 100;
    this.s = sides;
    this.staticStroke = 1.5 * ((float)height/1080.0);
  }
  
  void display() {
    pushMatrix();
    noLights();
    translate(300, -50, -300);
    pushMatrix();
    translate(970, 0, -450);
    rotateY(R1*4);
    //box(2, 1000, 2); //rotation axis
    translate(-970, 0, 450);
    for (int i = polygons; i > 0; i--) {
      pushMatrix();
      translate(width/2, height/2, -i*spacing);
      rotate(R*(polygons-i));
      polygonFX((i*iterationSize)+1);
      popMatrix();
    }
    popMatrix();
    R+= rAcc;
    R1+= rAcc;
    popMatrix();
    if (keyPressed && key == ' ') {
      R1 = 0;
    }
  }
  
  void polygonFX(int n) {
    fill(0);
    stroke(200);
    strokeWeight(staticStroke); //for stroke_perspective --> 0.5 at the very most
    polygon(0, 0, n, s);
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
