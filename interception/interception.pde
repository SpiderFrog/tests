size(600, 600);
background(255);

int i;
float X;
float Y;
float m;
float q;
color sl =#ff00f0;

//graph
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

//lines
stroke(sl);
m=6;
q=3;
for(X=-300;X<=800;X=X+0.01){
Y=m*X-q*5; //so that on the plane every 5 pixel are 1 unit
point(300+X,300+Y);
}
stroke(#f89f0f);
m=3;
q=-7;
for(X=-300;X<=800;X=X+0.01){
Y=m*X-q*5; //so that on the plane every 5 pixel are 1 unit
point(300+X,300+Y);
}

