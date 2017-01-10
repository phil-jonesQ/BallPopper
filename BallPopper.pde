// Silly game to practice objects and arrays
// 100 Random circles on screen and you have to see how click to pop them

ArrayList<Ball> b = new ArrayList<Ball>();

int ballAmount = 100;


void setup () {

  size (400, 400);
  populateBalls();
}

void draw () {

  background(0);
  showBalls();
}

void populateBalls() {
  for (int i=0; i < ballAmount; i++) {
    b.add(new Ball());
  }
}

void showBalls() {
  for (int i=0; i < b.size(); i++) {
    b.get(i).show();
  }
}

void mousePressed() {
  //println(mouseX,mouseY);
  checkClick();
}

void checkClick() {
  for (int i=0; i < b.size(); i++) {
    float ballX = b.get(i).getBallPosX();
    float ballY = b.get(i).getBallPosY();
    float d=dist(mouseX, mouseY, ballX, ballY); 
    if ( d < 10) {
      b.remove(i);
    }
  }
}