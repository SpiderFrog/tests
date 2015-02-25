



int i;
int S=1400;
int S1=700;
int U=10;
float m=0.5;
float c=7;
float Xc=10;
float Yc=-10;
float R=10;
void setup(){
size(S,S1);
background(255);
DrawGraph();
}

void draw(){
  DrawLine(m,c);
  }

void DrawGraph(){
  
for(i=0;i<=S;i++){ 
point(i,S1/2);
}

for(i=0;i<=S;i++){
point(S/2,i);
}

for (i=0;i<=S;i=i+U){
    ellipse(i,S1/2,0,10);
}
for (i=0;i<=S;i=i+U){ 
    ellipse(S/2,i,10,0);
}
}

void DrawLine(float M,float C){
float x;
float y;

 stroke(0);
  for(x=-S/2;x<=S;x=x+0.01){
y=-M*x-C*U;
point(S/2+x,S1/2+y);

}
  }
  
void DrawCircle(){
  float x;
  float y;
  float r;
  point(Xc*10+300,-Yc*10+300);


for(x=-S/2;x<=S;x=x+0.1){
  for(y=-S1/2;y<=S1;y=y+0.1){

     r=(pow((x-Xc),2)+pow((y-Yc),2));
   
   r=round(r);
   
   if(r==pow(R,2)){point(x*10+S/2,-y*10+S1/2);}
     
  }
  }
  }

/*for(X2=-300;X2<=800;X2=X2+0.01){
Y2=-m2*X2-q2*10;
point(300+X2,300+Y2);
}*/

