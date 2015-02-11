void setup() {
  size(600, 600);
}

void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    fill(#006699);}
   else{ if(mousePressed && (mouseButton == RIGHT  )){
          fill(#FFCC00);}
     else { fill(255);
  }
  }
  ellipse(mouseX, mouseY, 80, 80);
}
