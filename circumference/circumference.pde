size(600, 600);
background(255);

int i;
float x;
float y;
float Xc;
float Yc;
float r;
float R;
color sl =#ff00f0;

stroke(0);
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

Xc=8;
Yc=12;
R=10;



point(Xc*10+300,-Yc*10+300);


for(x=-300;x<=600;x=x+0.1){
  for(y=-300;y<=600;y=y+0.1){

     r=(pow((x-Xc),2)+pow((y-Yc),2));
   
   r=round(r);
   
   if(r==pow(R,2)){point(x*10+300,-y*10+300);}
     
  }
  }
/*stroke(255,0,0,100);
noFill();
ellipse(Xc*10+300,-Yc*10+300,R*20,R*20);
*/
