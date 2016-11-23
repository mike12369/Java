PFont f;

int rad = 60;        
float xpos, ypos;    

float xspeed = 2.8;  
float yspeed = 2.2;  

int xdirection = 1;  
int ydirection = 1; 

void setup() {
  size(2000, 2000, P3D);
  noStroke();
  point(240, 60);
  background(0);
  frameRate(30);
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
 
  f = createFont("SourceCodePro", 24);
  textFont(f);
  textAlign(CENTER, CENTER);
} 

void draw() {
  background(0);
  if (mousePressed) {
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
        text(letter, x, y);
        counter++;
      }
    }
  } else {
    background(40);
          
            xpos = xpos + ( xspeed * xdirection );
            ypos = ypos + ( yspeed * ydirection );
           
            if (xpos > width-rad || xpos < rad) {
              xdirection *= -1;
            }
            if (ypos > height-rad || ypos < rad) {
              ydirection *= -1;
            }
          
            ellipse(xpos, ypos, rad, rad);
            noStroke(); 
          float dirY = (mouseY / float(height) - 0.5) * 2;
          float dirX = (mouseX / float(width) - 0.5) * 2;
          directionalLight(60, 70, 90, -dirX, -dirY, -1); 
          translate(200, height/2, 0); 
          sphere(80); 
          translate(250, 0, 0); 
          sphere(100);
          translate(300, 0, 0); 
          sphere(120);
          translate(250, 0, 0); 
          sphere(100); 
          translate(200, 0, 0); 
          sphere(80);
          }
                  }