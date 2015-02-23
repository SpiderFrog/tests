size(600, 600);
background(255);

int i;
float X1;
float Y1;
float X2;
float Y2;
float m1;
float q1;
float m2;
float q2;
float PX;
float PY;
color sl =#ff00f0;

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

q1=7;
m1=-3;

stroke(0,255,0);

for(X1=-300;X1<=800;X1=X1+0.01){
Y1=-m1*X1-q1*10; //so that on the plane every 5 pixel are 1 unit
point(300+X1,300+Y1);
}

q2=10;
m2= 3;
stroke(255,0,0);

for(X2=-300;X2<=800;X2=X2+0.01){
Y2=-m2*X2-q2*10; //so that on the plane every 5 pixel are 1 unit
point(300+X2,300+Y2);
}


PX=(q2-q1)/(m1-m2);
PY=m1*PX+q1;



println("interception=("+PX+";"+PY+")");

