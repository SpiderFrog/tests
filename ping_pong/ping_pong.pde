 
int rad = 20;        // Width of the shape
float xpos, ypos, X1,Y1,X2,Y2,scoreR,scoreG;    // Starting position of shape    

float xspeed = 30;  // Speed of the shape
float yspeed = 25;  // Speed of the shape

float xdirection = 1;  // Left or Right
float ydirection = 1;  // Top to Bottom


void setup() 
{
  size(700, 700);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
  X1 = (width/2)-50;
  Y1 = height-25;
  X2 = (width/2)-50;
  Y2 = 0;
}

void draw() {
  background(255);

  
  

  // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad ||xpos > X1-rad && 
      xpos <X1+100-rad&& ypos>Y1-rad ||xpos > X2-rad && 
      xpos <X2+100-rad&& ypos<25+rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad || xpos > X1-rad && 
      xpos <X1+100-rad&& ypos>Y1-rad ||xpos > X2-rad && 
      xpos <X2+100-rad&& ypos<25+rad) {
    ydirection *= -1;
  }
  
  if (ypos > height-rad) {
   scoreG++;
  }

  if (ypos < rad) {
   scoreR++;
  }

  // Draw the shape
  fill(0,0,255);
  ellipse(xpos, ypos, rad, rad);
  
  fill(255,0,0);
    rect(X1,Y1,100,25);
    
    fill(0,255,0);
    rect(X2,Y2,100,25);
    
    text("GREEN = "+scoreG,300,300);
    
    fill(255,0,0);
    text("RED = "+scoreR,300,350);
}



void keyPressed(){

if (keyCode==RIGHT){X1=X1+100;}
if (keyCode==LEFT){X1=X1-100;}
if (key=='a'){X2=X2-100;}
if (key=='d'){X2=X2+100;}

}

