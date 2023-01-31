class SpiralLOW {
  float R = 100;
  float s = 0;
  float p = 0;
  float zRotationSpeed;
  float zRotation;
  float yRotationSpeed;
  float yRotation;
  float m = 0;
  float ma = PI/32;
  
  SpiralLOW() {
    
  }
  
  void display() {
    pushMatrix();
    if (s > 180) {
      s = 0;
    }
    translate(-470, -535, -1800);
    translate(width / 2, height / 2, /*-s + */775);
    s+=1;
    //box(1, 1, 3000); //STARTING POINT
    //rotateY(PI/2); //SIDE VIEWr
    zRotation+=zRotationSpeed;
    yRotation+=yRotationSpeed;
    rotateY(yRotation);
    rotateZ(zRotation);
    beginShape(TRIANGLE_STRIP);
    strokeWeight(0.125);
    for(float t = 0; t < 2*PI; t+=PI/100) {
      stroke(map(t, 0, 2*PI, 255, 100), map(t, 0, 2*PI, 255, 100), map(t, 0, 2*PI, 255, 100));
      //fill(map(t, 0, 500, 0, 255));
      noFill();
      vertex(R * t * cos((6*t)), R * t * sin((6*t)), t * R);
      t+=m;
      vertex(R * t * cos((6*t)), R * t * sin((6*t)), t * R);
      t-=m;
      m-=0.000001;
    }
    endShape();
    popMatrix();
    p+= PI / 2500;
  }
}
