void setup() {
  size(480, 480);
}
int i = 20;
void draw() {
  if (mousePressed) {
    fill(30);
  } else {
    fill(100);
  }
  ellipse(mouseX, mouseY, 5 + i, 20);
}