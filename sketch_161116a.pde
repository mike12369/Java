void setup() {
  size(900, 900, P3D);
  noStroke();
  point(240, 60);
}

int i = 20;

void draw() {
  noStroke(); 
  background(40); 
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  directionalLight(50, 50, 50, -dirX, -dirY, -1); 
  translate(width/2 - 100, height/2, 0); 
  sphere(80);
  translate(200, 0, 0); 
  sphere(80); 
  translate(200, 0, 0); 
  sphere(80); 
  
}