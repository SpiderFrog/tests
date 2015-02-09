void setup() {
  size(600, 600);
}
color s = #FFC0C0;
color e = #00C080;
color We= #ffffff;
color t = #FF0000;
color sl =#00FFC0;
void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    t=#C000FF; We=#000000;sl=#000080;e=#FF0000;}
   else{ if(mousePressed && (mouseButton == RIGHT  )){
          t=#FFFF00;We=#40FFC0;sl=#00C0FF;e=#000000;}
     else { color s = #FFC0C0;
            color e = #00C080;
            color We= #ffffff;
            color t = #FF0000;
            color sl =#00FFC0;
  }
  }


fill(t);
rectMode(CENTER);
rect(mouseX,mouseY,20,100);
ellipseMode(CENTER);
fill(s);
ellipse(mouseX,mouseY-30,60,60);

fill(We);
ellipse(mouseX-19,mouseY-30,14,32); 
ellipse(mouseX+19,mouseY-30,14,32); 

fill(e);
ellipse(mouseX-19,mouseY-30,8,8);
ellipse(mouseX+19,mouseY-30,8,8);
fill(sl);
ellipse(mouseX-15,mouseY+20,14,40);
ellipse(mouseX+15,mouseY+20,14,40);
ellipse(mouseX-10,mouseY+75,14,57);
ellipse(mouseX+10,mouseY+75,14,57);

}
