class Ball {
  float x;
  float y;
  float r;
  float colR;
  float colB;
  float colG;


  Ball () {
    x = random (0, width);
    y = random (0, height);
    r = random (10, 20);
    colR = random (10, 255);
    colB = random (10, 255);
    colG = random (10, 255);
  }

  void show () {
    noStroke();
    fill (colR, colG, colB);
    ellipse(x, y, r, r);
  }

  float getBallPosX() {
    return x;
  }
  float getBallPosY() {
    return y;
  }
}