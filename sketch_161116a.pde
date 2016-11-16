void setup() {
  size(480, 480);
  point(240, 60);
}

int i = 20;

void draw() {
  if (mousePressed) {
    fill(0 + i);
  } else {
    fill(255 - i);
  }
  ellipse(mouseX, mouseY, 5, 20);
}