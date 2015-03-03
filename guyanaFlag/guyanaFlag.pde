size(800, 800);
background(255);

int i;

stroke(0);
for(i=0;i<=800;i++){ //X=these are the meters
point(i,400);
}

for(i=0;i<=800;i++){ //Y=this is the cost
point(400,i);
}

for (i=0;i<=800;i=i+10){
    ellipse(i,400,0,10);
}
for (i=0;i<=800;i=i+10){ 
    ellipse(400,i,10,0);
}

float Xa=400;
float Ya=400;
float Xb=400+35*10;
float Yb=400;
float Xc=400+35*10;
float Yc=400-20*10;
float Xd=400;
float Yd=400-20*10;
float Mx1;
float My1;
float Mx2;
float My2;
float Xe;
float Ye;
float Xf;
float Yf;
float Xg;
float Yg;
float R1=1;
float R2=1;
float S1=1;
float S2=4;
float x;
float y;
float D1;
float D2;
float m1;
float m2;
float m3;
float m4;
float c1;
float c2;
float c3;
float c4;
fill(#00a300);
rect(400,400,35*10,-20*10);
fill(0);
ellipse(Xa,Ya,10,10);
ellipse(Xb,Yb,10,10);
ellipse(Xc,Yc,10,10);
ellipse(Xd,Yd,10,10);

Mx1=(Xd+Xa)/2;
My1=(Yd+Ya)/2;
Mx2=(Xc+Xb)/2;
My2=(Yc+Yb)/2;
ellipse(Mx1,My1,10,10);

ellipse(Mx2,My2,10,10);

Xe=(R1*Mx2+S1*Mx1)/(R1+S1);
Ye=(R1*My2+S1*My1)/(R1+S1);
ellipse(Xe,Ye,10,10);
line(Xa,Ya,Xe,Ye);
line(Xd,Yd,Xe,Ye);
line(Xa,Ya-15,Xe-15,Ye);
line(Xd,Yd+15,Xe-15,Ye);

line(Xa,Ya,Mx2,My2);
line(Xd,Yd,Mx2,My2);
line(Xa,Ya-15,Mx2-20,My2);
line(Xd,Yd+15,Mx2-20,My2);

m1=(-My2+Ya)/(Mx2-Xa);
c1=(Ya-400)/10;

m2=(My2-Yd)/(Mx2-Xd);
c2=Yd;

m3=(-Ye+Ya)/(Xe-Xa);
c3=(Ya-400)/10;

m4=(-Ye+Yd)/(Xe-Xd);
c4=Yd;

println(c1+" "+m1);





for(x=-400;x<=800;x++){
 for(y=-400;y<=800;y++){
  if(y<-m1*x-c1 && y>m2*x-c2 && x>0 ){
  stroke(255);
  point(400+x,400+y)  ;
  }
  }
  }

for(x=-400;x<=800;x++){
 for(y=-400;y<=800;y++){
  if(y<-m1*x-c1 && y>m2*x-c2 && x>15 ){
  stroke(255,255,0);
  point(400+x-15,400+y)  ;
  }
  }
  }
  
    for(x=-400;x<=800;x++){
 for(y=-400;y<=800;y++){
  if(y<-m3*x-c3 && y>-m4*x-c4 && x>0 ){
  stroke(0);
  point(400+x,400+y)  ;
  }
  }
  }
  
  for(x=-400;x<=800;x++){
 for(y=-400;y<=800;y++){
  if(y<-m3*x-c3 && y>-m4*x-c4 && x>15 ){
  stroke(255,0,0);
  point(400+x-15,400+y)  ;
  }
  }
  }
  
 
  
  
/*

for(x=-400;x<=800;x++){
y=-m1*x-c1;
point(400+x,400+y);
}

for(x=-400;x<=800;x++){
y=m2*x-c2;
point(400+x,400+y);
}

for(x=-400;x<=800;x++){
y=-m3*x-c3;
point(400+x,400+y);
}

for(x=-400;x<=800;x++){
y=-m4*x-c4;
point(400+x,400+y);
}
*/

