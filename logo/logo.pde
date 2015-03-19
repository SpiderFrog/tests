size(600, 600);
background(255);

int i;

stroke(0);
for(i=0;i<=600;i++){ //X=these are the meters
point(i,300);
}

for(i=0;i<=600;i++){ //Y=this is the cost
point(300,i);
}

for (i=0;i<=600;i=i+10){
    ellipse(i,300,0,10);
}
for (i=0;i<=600;i=i+10){ 
    ellipse(300,i,10,0);
}

float Xa=300;
float Ya=300;
float Xb=300+10*10;
float Yb=300;
float Xc=300+10*10;
float Yc=300-10*10;
float Xd=300;
float Yd=300-10*10;
float Xe;
float Ye;
float Xf;
float Yf;
float Xg;
float Yg;
float R1=2;
float R2=1;
float S1=1;
float S2=4;
float x;
float y;
float D1;
float D2;
fill(#FFFF00);
rect(300,300,10*10,-10*10);
fill(0);
ellipse(Xa,Ya,10,10);
ellipse(Xb,Yb,10,10);
ellipse(Xc,Yc,10,10);
ellipse(Xd,Yd,10,10);

Xe=(R1*Xb+S1*Xa)/(R1+S1);
Ye=(R1*Yb+S1*Ya)/(R1+S1);
ellipse(Xe,Ye,10,10);
Xf=(R2*Xc+S2*Xb)/(R2+S2);
Yf=(R2*Yc+S2*Yb)/(R2+S2);
ellipse(Xf,Yf,10,10);

stroke(0);
for(y=-300;y<=800;y++){

point(Xe,300+y);
}

for(x=-300;x<=800;x++){

point(300+x,Yf);
}

Xg=Xe;
Yg=Yf;
ellipse(Xg,Yg,10,10);

for(x=-300;x<=800;x++){
y=(((300+x-Xa)*(Yg-Ya))/(Xg-Xa))+Ya;
point(300+x,y);
}
x=-300;
y=-300;
for(x=-300;x<=600;x++){
 for(y=-300;y<=600;y++){
  if(x>300 && x<Xb && y<300 && y>Xf && y>(((300+x-Xa)*(Yg-Ya))/(Xg-Xa))+Ya ){
  stroke(0);
  point(300+x,300+y)  ;
  }
  }
  }
  fill(0);
  rectMode(CORNERS);
  rect(Xg,Yg,Xb,Yb);
  triangle(Xa,Ya,Xg,Yg,Xe,Ye);
