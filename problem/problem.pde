size(600, 600);
background(255);

int i;
float X;
float Y;
float m;
float q;
color sl =#ff00f0;
q=5.5;
m=-3.3;
stroke(#000000);
for(i=0;i<=600;i++){ //X=these are the meters
point(i,300);
}

for(i=0;i<=600;i++){ //Y=this is the cost
point(300,i);
}

for (i=0;i<=600;i=i+5){
    ellipse(i,300,0,10);
}
for (i=0;i<=600;i=i+5){ 
    ellipse(300,i,10,0);
}


for(X=0;X<=800;X=X+0.01){
Y=m*X-q*5; //so that on the plane every 5 pixel are 1 unit
point(300+X,300+Y);
