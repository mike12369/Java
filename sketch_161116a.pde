int rad = 60;        
float xpos, ypos;     

float xspeed = 5;  
float yspeed = 5;  
int xdirection = 1;  
int ydirection = 1;  

void setup() {
  size(640, 360, P3D);
  noStroke();
  fill(204);
  frameRate(30);
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}

void draw() {
  if(mousePressed){
  noStroke(); 
  background(0); 
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  directionalLight(204, 204, 204, -dirX, -dirY, -1); 
  translate(width/2 - 100, height/2, 0); 
  sphere(80); 
  translate(200, 0, 0); 
  sphere(80); 
  }

else {
  background(0);
  
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  ellipse(xpos, ypos, rad, rad);
}
}