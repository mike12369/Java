void setup() {
  size(900, 900, P3D);
  noStroke();
  point(240, 60);

  printArray(PFont.list());
  f = createFont("SourceCodePro-Regular.ttf", 24);
  textFont(f);
  textAlign(CENTER, CENTER);
} 

void draw() {
  noStroke(); 
  background(40); 
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  directionalLight(60, 70, 90, -dirX, -dirY, -1); 
  translate(300, height/2, 0); 
  sphere(120);
  translate(250, 0, 0); 
  sphere(100); 
  translate(200, 0, 0); 
  sphere(80); 
  
  int margin = 10;
  translate(margin*4, margin*4);

  int gap = 46;
  int counter = 35;
  
  for (int y = 0; y < height-gap; y += gap) {
    for (int x = 0; x < width-gap; x += gap) {

      char letter = char(counter);
      
      if (letter == 'A' || letter == 'E' || letter == 'I' || letter == 'O' || letter == 'U') {
        fill(255, 204, 0);
      } 
      else {
        fill(255);
      }
      
          text(letter, x, y);

 
      counter++;
    }
  }
}