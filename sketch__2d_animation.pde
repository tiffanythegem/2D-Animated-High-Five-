LeftHand lHand;
BigBang explosion;
RightHand myRightHand;
ArrayList<WindLine> windLines; // store trailing wind lines
boolean isPaused = false;
int pauseStartTime = 0;
int pauseDuration = 1000; // 1 second pause
void setup() {
  size(800, 600);
  background(150);
  lHand = new LeftHand(2.75);
  explosion = new BigBang(width / 2, height / 2);
  myRightHand = new RightHand();
}

void draw() {
  background(150);
  explosion.update();
  explosion.display();
  lHand.display();
  windLines = new ArrayList<WindLine>();
  // If paused, wait for 1 second before restarting the loop
  if (isPaused) {
    if (millis() - pauseStartTime > pauseDuration) {
      isPaused = false;
      myRightHand.reset();
      windLines.clear(); // reset wind lines
    }
  } else {
    myRightHand.update();
    updateWindLines();
  }

  // wind lines behind hand
  for (WindLine line : windLines) {
    line.display();
  }

  // draws hand
  myRightHand.display();
}

void updateWindLines() {
  float distanceFromHand = 140;  // lines behind the hand

  // three wind lines 
  windLines.add(new WindLine(myRightHand.x + distanceFromHand, myRightHand.y - 15, 15));  // Top line
  windLines.add(new WindLine(myRightHand.x + distanceFromHand + 10, myRightHand.y, 25));  // Middle line
  windLines.add(new WindLine(myRightHand.x + distanceFromHand + 20, myRightHand.y + 15, 10));  // Bottom line

  if (windLines.size() > 30) {
    windLines.remove(0);
  }
}
