void setup() {
  size(480, 480);
}
int i = 1;
void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 100 + i, 80);
  i++;
}