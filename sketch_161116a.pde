void setup() {
  size(480, 480);
  point(240, 60);
}

int i = 20;

void draw() {
  if (mousePressed) {
    fill(30);
  } else {
    fill(100);
  }
  ellipse(mouseX, mouseY, 5, 20 + i);
  i++;
  print("i is " + i);
}