size(600, 600);
background(255);

int i;
int X;
int Y;
int m;
int q;

q=7;
m=-2;

for(i=0;i<=600;i++){
point(i,300);
}

for(i=0;i<=600;i++){
point(300,i);
}


for(X=0;X<=800;X++){
Y=m*X+q;
point(300+X,300+Y);
}
