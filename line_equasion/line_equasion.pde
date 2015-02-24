size(600, 600);
background(255);

float i;
float X;
float Y;
float m;
float q;
color sl =#ff00f0;
q=0;
m=0.245;

for(i=0;i<=600;i++){
point(i,300);
}

for(i=0;i<=600;i++){
point(300,i);
}
stroke(sl);

for(X=0;X<=800;X++){
Y=-m*X-q;
point(300+X,300+Y);
}
