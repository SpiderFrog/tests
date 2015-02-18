size(600,600);

int i;
float x;
float y;
float m;
float c;

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
c=-1;
m=2;
for(x=-300;x<=600;x=x+0.01){
y=m*x-c*10;
point(300+x,300+y);
}

for(x=-300;x<=600;x++){
 for(y=-300;y<=600;y++){
  if(y<=m*x-c*10){
  stroke(250,100,0,100);
  point(300+x,300+y)  ;
  }
  }
  }
