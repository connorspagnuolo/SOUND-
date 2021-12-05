
  
  
float maxThreshold = 0.1;
float minThreshold = 0.01;

void setup() {
  size(800, 600, P2D);  
  setupSound();
}

void draw() {
  updateSound();
  background(50);
  
  
  
  
  
  float amp = getAmp();
  
  // using two thresholds instead of one makes for smoother transitions
  if (amp > maxThreshold) {
    square(200, 100, 57);
    fill(0, 200, 0);
  } else if (amp < minThreshold) {
    square(400, 500, 90);
    fill(255, 0, 0);
  }
}
