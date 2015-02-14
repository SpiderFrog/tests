size(600, 600);
background(255);

int i;
float X;
float Y;
float m;
float q;
color sl =#ff00f0;

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
fill(0);


text("ASMS",10,30);



























































