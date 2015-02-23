size(600,600);

int i;
float x5;
float y5;
float m5;
float c5;
float x4;
float y4;
float m4;
float c4;
float x3;
float y3;
float m3;
float c3;
float x2;
float y2;
float x1;
float y1;

background(255);

for(i=0;i<=600;i++){
point(i,300);
}

for(i=0;i<=600;i++){
point(300,i);
}

for (i=0;i<=600;i=i+10){
    ellipse(i,300,0,10);
}
for (i=0;i<=600;i=i+10){
    ellipse(300,i,10,0);
}



//area to the right of the Y line where X is positive color= BOO?
for(x1=-300;x1<=600;x1++){
 for(y1=-300;y1<=600;y1++){
  if(x1>=0){
  stroke(0,250,250,100);
  point(300+x1,300+y1)  ;
  }
  }
  }
//area above the X line where Y is positive yellow
  for(x2=-300;x2<=600;x2++){
 for(y2=-300;y2<=600;y2++){
  if(-y2<=0){
  stroke(250,250,0,100);
  point(300+x2,300+y2)  ;
  }
  }
  }
//area 3 Y>=1/4*X+3 red
c3=3;
m3=0.25;
for(x3=-300;x3<=600;x3=x3+0.01){
y3=-m3*x3-c3*10;
point(300+x3,300+y3);
}

for(x3=-300;x3<=600;x3++){
 for(y3=-300;y3<=600;y3++){
  if(y3<=-m3*x3-c3*10){
  stroke(255,0,0,100);
  point(300+x3,300+y3)  ;
  }
  }
  }
//area 4 Y>=-5*X+10 blue
  stroke(0);
  c4=10;
m4=-5;
for(x4=-300;x4<=600;x4=x4+0.01){
y4=-m4*x4-c4*10;
point(300+x4,300+y4);
}

for(x4=-300;x4<=600;x4++){
 for(y4=-300;y4<=600;y4++){
  if(y4<=-m4*x4-c4*10){
  stroke(0,255,0,100);
  point(300+x4,300+y4)  ;
  }
  }
  }
//area 5 Y>=-X+6 green
  stroke(0);
 c5=6;
m5=-1;
for(x5=-300;x5<=600;x5=x5+0.01){
y5=-m5*x5-c5*10;
point(300+x5,300+y5);
}

for(x5=-300;x5<=600;x5++){
 for(y5=-300;y5<=600;y5++){
  if(y5<=-m5*x5-c5*10){
  stroke(0,0,250,100);
  point(300+x5,300+y5)  ;
  }
  }
  }
  
