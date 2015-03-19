size(800, 800);
background(255);

int i;

stroke(0);
for(i=0;i<=800;i++){ 
point(i,400);
}

for(i=0;i<=800;i++){ 
point(400,i);
}

for (i=0;i<=800;i=i+10){
    ellipse(i,400,0,10);
}
for (i=0;i<=800;i=i+10){ 
    ellipse(400,i,10,0);
}

float Xc=15;
float Yc=15;
float R=10;
float Xa;
float Ya;
float Xb;
float Yb;
float Xd;
float Yd;
float Xe;
float Ye;
float Xf;
float Yf;
float Xg;
float Yg;
float Xh;
float Yh;
float Xi;
float Yi;
float m1;
float m2;
float q1;
float q2;
float q3;
float q4;
float q5;
float q6;
float X;
float Y;
float r;

R=R*10;
Xc=Xc*10;
Yc=Yc*10;
Xa=Xc;
Ya=Yc-R;
Xb=Xc+R;
Yb=Yc;
Xd=Xc;
Yd=Yc+R;
Xe=Xc-R;
Ye=Yc;
Xf=(Xa+Xb)/2;
Yf=(Ya+Yb)/2;
Xg=(Xb+Xd)/2;
Yg=(Yb+Yd)/2;
Xh=(Xd+Xe)/2;
Yh=(Yd+Ye)/2;
Xi=(Xe+Xa)/2;
Yi=(Ye+Ya)/2;
m1=(Yb-Ya)/(Xb-Xa);
m2=-1/m1;
q1=Ya-(m1*Xa);
q2=Yi-(m1*Xi);
q3=Ye-(m1*Xe);
q4=Ye-(m2*Xe);
q5=Yh-(m2*Xh);
q6=Yd-(m2*Xd);


for(X=Xc-R;X<=Xc+R;X=X+0.1){
  for(Y=Yc-R;Y<=Yc+R;Y=Y+0.1){

     r=(pow((X-Xc),2)+pow((Y-Yc),2));
   
   r=round(r);
   
   if(r==pow(R,2)){point(X+400,-Y+400);}
     
  }
  }


q1=Ya-(m1*Xa);
q2=Yi-(m1*Xi);
q3=Ye-(m1*Xe);
q4=Ye-(m2*Xe);
q5=Yh-(m2*Xh);
q6=Yd-(m2*Xd);

  println(q1);
  println(q2);
  println(q3);
  println(q4);
  println(q5);
  println(q6);
  
  
  for(X=Xc-R;X<=Xc+R;X=X+0.1){
  for(Y=Yc-R;Y<=Yc+R;Y=Y+0.1){

    r=(pow((X-Xc),2)+pow((Y-Yc),2));
    
  
    if(r<pow(R,2) && Y>m2*X+q6 && Y<m1*X+q2 || 
        r<pow(R,2) && Y<m2*X+q4 && Y>m1*X+q2 ||
          r<pow(R,2) && Y<m1*X+q1 && Y<m2*X+q5 || 
            r<pow(R,2) && Y>m1*X+q3 && Y>m2*X+q5  ){
              
      stroke(0);
      point(400+X,400-Y);
      }
      
    if(Y<m2*X+q5 && Y>m2*X+q4 && Y<m1*X+q3 && Y>m1*X+q2 ||
        Y>m1*X+q1 && Y<m1*X+q2 && Y>m2*X+q5 && Y<m2*X+q6 ){
     stroke(255,0,0);
     point(400+X,400-Y);
     }

     
         if(Y<m2*X+q6 && Y>m2*X+q5 && Y<m1*X+q3 && Y>m1*X+q2 ||
             Y<m2*X+q5 && Y>m2*X+q4 && Y<m1*X+q2 && Y>m1*X+q1){
     stroke(0,255,0);
     point(400+X,400-Y);
     }
     

    }
    }
    
    for(X=Xa;X<=Xb;X++){
Y=m1*X+q1;
point(400+X,400-Y);
}

for(X=Xi;X<=Xg;X++){
Y=m1*X+q2;
point(400+X,400-Y);
}

for(X=Xe;X<=Xd;X++){
Y=m1*X+q3;
point(400+X,400-Y);
}

for(X=Xe;X<=Xa;X++){
Y=m2*X+q4;
point(400+X,400-Y);
}

for(X=Xd;X<=Xb;X++){
Y=m2*X+q6;
point(400+X,400-Y);
}

for(X=Xh;X<=Xf;X++){
Y=-1/m1*(X-Xh)+Yh;
point(400+X,400-Y);
} 


