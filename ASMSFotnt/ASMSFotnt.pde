size(600, 600);
background(255);

int i;
float X;
float Y;
float m;
float q;
color sl =#ff00f0;
PFont square;

stroke(#000000);
for(i=0;i<=600;i++){ 
point(i,300);
}

for(i=0;i<=600;i++){ 
point(300,i);
}

for (i=0;i<=600;i=i+5){
    ellipse(i,300,0,10);
}
for (i=0;i<=600;i=i+5){ 
    ellipse(300,i,10,0);
}
fill(#f00000);
square = loadFont("Stencil-48.vlw");
textFont(square);
textSize(200);
text("ASMS",10,300);



























































