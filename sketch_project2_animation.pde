int cloudX=-270;
int cloudY=300;
int airplaneAngle;
int airplaneX;
int airplaneY=500;

void setup() {
  size(600, 600, P2D);
}

void draw() {
  background(170, 232, 247);
  strokeWeight(10);
  stroke(80, 134, 88);
  fill(57, 55, 237);
  ellipse(300, 700, 650, 320);
  airplane(airplaneX,airplaneY,airplaneAngle);
  if (airplaneX>1000) {
    airplaneX=-300;
    airplaneY=500;
  }
  if (airplaneX>=300) {
    airplaneY=airplaneY+1;
    airplaneX=airplaneX+4;
    airplaneAngle=10;
  }
  if (airplaneX<300) {
    airplaneY=airplaneY-1;
    airplaneX=airplaneX+4;
    airplaneAngle=-20;
  }
  cloud(cloudX,cloudY);
  cloudX=cloudX+1;
  if (cloudX>870) {
    cloudX=-270;
  }
}

void cloud(int x, int y) {
  pushMatrix();
  translate(x, y);
  noStroke();
  fill(255);
  ellipse(-140, -190, 100, 90);
  ellipse(-220, -200, 100, 100);
  ellipse(-175, -250, 50, 60);
  ellipse(-120, -230, 90, 90);
  ellipse(-100, -180, 80, 80);

  ellipse(150, -50, 80, 80);
  ellipse(90, -40, 70, 70);
  ellipse(130, -100, 100, 80);
  ellipse(200, -70, 80, 80);
  ellipse(220, -30, 80, 60);
  popMatrix();
}

void airplane(int x, int y, int angle) {
  pushMatrix();
  translate(x, y);
  rotate(radians(angle));
  noStroke();
  fill(222, 199, 212);
  ellipse(165, 110, 40, 30);
  triangle(-140, 140, -80, 140, -150, 180);
  fill(255);
  ellipse(150, 100, 50, 60);
  quad(-50, 100, -50, 160, -180, 140, -170, 120);
  fill(222, 199, 212);
  quad(-170, 50, -150, 130, -60, 120, -150, 50);
  triangle(-70, 40, 0, 100, 70, 90);
  fill(255);
  quad(-50, 100, 150, 70, 150, 130, -50, 160);
  fill(222, 199, 212);
  quad(-20, 220, 30, 130, 100, 120, 0, 220);
  popMatrix();
}
