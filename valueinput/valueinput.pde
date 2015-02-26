



int i;
int S=1400;
int S1=700;
int U=10;
float m=0;
float c=0;
int H=30;
int L=0;
int F=0;
int F1=0;
float m1;
float c1;
float PX;
float PY;
boolean Line2=false;


void setup(){
size(S,S1);
background(255);
DrawGraph();
}

void draw(){
  background(255);
DrawGraph();
stroke(255,0,0);
  DrawLine(m,c,F);
  if(Line2){
            stroke(0,255,0);
            DrawLine(m1,c1,F1);
            PX=(c-c1)/(m-m1);
            PY=m1*PX+c1;
            stroke(0);
            text("interception=("+PX+" ; "+PY+")",45,100);

}
  
  input();
    stroke(0);
    fill(0);
    textAlign(LEFT);
    text("line1",10,10);
    text("y="+m+"x+"+c,10,30);
    text("m="+m,10,50);
    text("c="+c,10,70);
    text("line2",100,10);
    text("y1="+m1+"x1+"+c1,100,30);
    text("m1="+m1,100,50);
    text("c1="+c1,100,70);
  
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

void DrawLine(float M,float C,int F){
float x;
float y;

 
 if(F==0){for(x=-S/2;x<=S;x=x+0.01){
           y=-M*x-C*U;
           point(S/2+x,S1/2+y);
          }
         }
else  line(S/2,0,S/2,S1);

}

  
 /* 
void DrawCircle(float Xc,float Yc, float R){
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
  
*/

void input(){
  
  //boxes
  if(L==0){
  fill(0,0,255,100);
  rect(0,H,60,30);
   }
   else{fill(0,0,155,100);rect(L,H,60,30);}

  
  }

void keyPressed(){
if(keyCode==TAB){Line2=!Line2;}
if(key==CODED){
  if(keyCode==UP && L==0){H=30;}
  if(keyCode==DOWN && L==0){H=50;}
  if(keyCode==UP && L==100){H=30;}
  if(keyCode==DOWN && L==100){H=50;}
  if(keyCode==RIGHT && L==0){L=100;}
  if(keyCode==LEFT && L==100){L=0;}
 // if(keyCode==RIGHT && L=30){L=140}
  //if(keyCode==LEFT && L=30){L=140}
  }
  if(H==30 && L==0 ){
    print("input m= ");
    
    switch(key){
    
         case '0':
                    m=m*10+0;println(m);F=0;break;
           case '1':
                    m=m*10+1;println(m);F=0;break;
           case '2':
                    m=m*10+2;println(m);F=0;break;
           case '3':
                    m=m*10+3;println(m);F=0;break;           
           case '4':
                    m=m*10+4;println(m);F=0;break;           
           case '5':
                    m=m*10+5;println(m);F=0;break;
           case '6':
                    F=0;m=m*10+6;println(m);break;
           case '7':
                    m=m*10+7;F=0;println(m);break;
           case '8':
                    m=m*10+8;F=0;println(m);break;
           case '9':
                    m=m*10+9;F=0;println(m);break;
           case '!':
                    m=m+0.1;println(m);F=0;break;
           case '"':
                    m=m+0.2;println(m);F=0;break;
           case '£':
                    m=m+0.3;println(m);F=0;break;           
           case '$':
                    m=m+0.4;println(m);F=0;break;           
           case '%':
                    m=m+0.5;println(m);F=0;break;
           case '&':
                    F=0;m=m+0.6;println(m);break;
           case '/':
                    m=m+0.7;F=0;println(m);break;
           case '(':
                    m=m+0.8;F=0;println(m);break;
           case ')':
                    m=m+0.9;F=0;println(m);break;
           case 'ì':
                    F=1;println("Infinity");break;
    
    }
     
    if(key==BACKSPACE){m=0;}
     
     if(key=='-' && m>=0){m=m*-1;}
     if(key=='+' && m<=0){m=m*-1;}
    
    
    
    /*switch(key){
      
           case '0':
                    m=0;println(m);F=0;break;
           case '1':
                    m=1;println(m);F=0;break;
           case '2':
                    m=2;println(m);F=0;break;
           case '3':
                    m=3;println(m);F=0;break;           
           case '4':
                    m=4;println(m);F=0;break;           
           case '5':
                    m=5;println(m);F=0;break;
           case '6':
                    F=0;m=6;println(m);break;
           case '7':
                    m=7;F=0;println(m);break;
           case '8':
                    m=8;F=0;println(m);break;
           case '9':
                    m=9;F=0;println(m);break;
           case 'q':
                    m=10;F=0;println(m);break;
           case 'w':
                    m=11;F=0;println(m);break;
           case 'e':
                    m=12;F=0;println(m);break;           
           case 'r':
                    m=13;F=0;println(m);break;           
           case 't':
                    m=14;F=0;println(m);break;
           case 'y':
                    m=15;F=0;println(m);break;
           case 'u':
                    m=16;F=0;println(m);break;
           case 'i':
                    m=17;F=0;println(m);break;
           case 'o':
                    m=18;F=0;println(m);break;     
    
           case 'p':
                    m=19;F=0;println(m);break;
           case 'a':
                    m=20;F=0;println(m);break;
           case 's':
                    m=-1;F=0;println(m);break;           
           case 'd':
                    m=-2;F=0;println(m);break;           
           case 'f':
                    m=-3;F=0;println(m);break;
           case 'g':
                    m=-4;F=0;println(m);break;
           case 'h':
                    m=-5;F=0;println(m);break;
           case 'j':
                    m=-6;F=0;println(m);break;
           case 'k':
                    m=-7;F=0;println(m);break;
           case 'l':
                    m=-8;F=0;println(m);break;
           case 'z':
                    m=-9;F=0;println(m);break;
           case 'x':
                    m=-10;F=0;println(m);break;           
           case 'c':
                    m=-11;F=0;println(m);break;           
           case 'v':
                    m=-12;F=0;println(m);break;
           case 'b':
                    m=-13;F=0;println(m);break;
           case 'n':
                    m=-14;F=0;println(m);break;
           case 'm':
                    m=-15;F=0;println(m);break;
           case ',':
                    m=-16;F=0;println(m);break;
           case '.':
                    m=-17;F=0;println(m);break;
           case '-':
                    m=-18;F=0;println(m);break;
           case 'ò':
                    m=-19;F=0;println(m);break;
           case 'à':
                    F=0;m=-20;println(m);break;
           case 'ì':
                    F=1;println("Infinity");break;
           default :
                    println();break; 
      }
 */
   }
   
  if(H==50 && L==0 ){
    print("input c= ");
   
   switch(key){
    
         case '0':
                    c=c*10+0;println(c);break;
           case '1':
                    c=c*10+1;println(c);break;
           case '2':
                    c=c*10+2;println(c);break;
           case '3':
                    c=c*10+3;println(c);break;           
           case '4':
                    c=c*10+4;println(c);break;           
           case '5':
                    c=c*10+5;println(c);break;
           case '6':
                    c=c*10+6;println(c);break;
           case '7':
                    c=c*10+7;println(c);break;
           case '8':
                    c=c*10+8;println(c);break;
           case '9':
                    c=c*10+9;println(c);break;
             case '!':
                    c=c+0.1;println(c);F=0;break;
           case '"':
                    c=c+0.2;println(c);F=0;break;
           case '£':
                    c=c+0.3;println(c);F=0;break;           
           case '$':
                    c=c+0.4;println(c);F=0;break;           
           case '%':
                    c=c+0.5;println(c);F=0;break;
           case '&':
                    F=0;c=c+0.6;println(c);break;
           case '/':
                    c=c+0.7;F=0;println(c);break;
           case '(':
                    c=c+0.8;F=0;println(c);break;
           case ')':
                    c=c+0.9;F=0;println(c);break;
    
    }
     
    if(key==BACKSPACE){c=0;}
     
     if(key=='-' && c>=0){c=c*-1;}
     if(key=='+' && c<=0){c=c*-1;}
    
   /*
    switch(key){
      
      case '0':
                    c=0;println(c);break;
           case '1':
                    c=1;println(c);break;
           case '2':
                    c=2;println(c);break;
           case '3':
                    c=3;println(c);break;           
           case '4':
                    c=4;println(c);break;           
           case '5':
                    c=5;println(c);break;
           case '6':
                    c=6;println(c);break;
           case '7':
                    c=7;println(c);break;
           case '8':
                    c=8;println(c);break;
           case '9':
                    c=9;println(c);break;
           case 'q':
                    c=10;println(c);break;
           case 'w':
                    c=11;println(c);break;
           case 'e':
                    c=12;println(c);break;           
           case 'r':
                    c=13;println(c);break;           
           case 't':
                    c=14;println(c);break;
           case 'y':
                    c=15;println(c);break;
           case 'u':
                    c=16;println(c);break;
           case 'i':
                    c=17;println(c);break;
           case 'o':
                    c=18;println(c);break;     
           case 'p':
                    c=19;println(c);break;
           case 'a':
                    c=20;println(c);break;
           case 's':
                    c=-1;println(c);break;           
           case 'd':
                    c=-2;println(c);break;           
           case 'f':
                    c=-3;;println(c);break;
           case 'g':
                    c=-4;println(c);break;
           case 'h':
                    c=-5;println(c);break;
           case 'j':
                    c=-6;println(c);break;
           case 'k':
                    c=-7;println(c);break;
           case 'l':
                    c=-8;println(c);break;
           case 'z':
                    c=-9;println(c);break;
           case 'x':
                    c=-10;println(c);break;           
           case 'c':
                    c=-11;println(c);break;           
           case 'v':
                    c=-12;println(c);break;
           case 'b':
                    c=-13;println(c);break;
           case 'n':
                    c=-14;println(c);break;
           case 'm':
                    c=-15;println(c);break;
           case ',':
                    c=-16;println(c);break;
           case '.':
                    c=-17;println(c);break;
           case '-':
                    c=-18;println(c);break;
           case 'ò':
                    c=-19;println(c);break;
           case 'à':
                    c=-20;println(c);break;
           default :
                    println();break;
      }
 */
   }
 if(H==30 && L==100 ){
    print("input m1= ");
   
   switch(key){
    
         case '0':
                    m1=m1*10+0;println(m1);F1=0;break;
           case '1':
                    m1=m1*10+1;println(m1);F1=0;break;
           case '2':
                    m1=m1*10+2;println(m1);F1=0;break;
           case '3':
                    m1=m1*10+3;println(m1);F1=0;break;           
           case '4':
                    m1=m1*10+4;println(m1);F1=0;break;           
           case '5':
                    m1=m1*10+5;println(m1);F1=0;break;
           case '6':
                    F1=0;m1=m1*10+6;println(m1);break;
           case '7':
                    m1=m1*10+7;F1=0;println(m1);break;
           case '8':
                    m1=m1*10+8;F1=0;println(m1);break;
           case '9':
                    m1=m1*10+9;F1=0;println(m1);break;
             case '!':
                    m1=m1+0.1;println(m1);F=0;break;
           case '"':
                    m1=m1+0.2;println(m1);F=0;break;
           case '£':
                    m1=m1+0.3;println(m1);F=0;break;           
           case '$':
                    m1=m1+0.4;println(m1);F=0;break;           
           case '%':
                    m1=m1+0.5;println(m1);F=0;break;
           case '&':
                    F=0;m1=m1+0.6;println(m1);break;
           case '/':
                    m1=m1+0.7;F=0;println(m1);break;
           case '(':
                    m1=m1+0.8;F=0;println(m1);break;
           case ')':
                    m1=m1+0.9;F=0;println(m1);break;
           case 'ì':
                    F1=1;println("Infinity");break;
    
    }
     
    if(key==BACKSPACE){m1=0;}
     
     if(key=='-' && m1>=0){m1=m1*-1;}
     if(key=='+' && m1<=0){m1=m1*-1;}
    
   /*
    switch(key){
      
           case '0':
                    m1=0;println(m1);F=0;break;
           case '1':
                    m1=1;println(m1);F=0;break;
           case '2':
                    m1=2;println(m1);F=0;break;
           case '3':
                    m1=3;println(m1);F=0;break;           
           case '4':
                    m1=4;println(m1);F=0;break;           
           case '5':
                    m1=5;println(m1);F=0;break;
           case '6':
                    F=0;m1=6;println(m1);break;
           case '7':
                    m1=7;F=0;println(m1);break;
           case '8':
                    m1=8;F=0;println(m1);break;
           case '9':
                    m1=9;F=0;println(m1);break;
           case 'q':
                    m1=10;F=0;println(m1);break;
           case 'w':
                    m1=11;F=0;println(m1);break;
           case 'e':
                    m1=12;F=0;println(m1);break;           
           case 'r':
                    m1=13;F=0;println(m1);break;           
           case 't':
                    m1=14;F=0;println(m1);break;
           case 'y':
                    m1=15;F=0;println(m1);break;
           case 'u':
                    m1=16;F=0;println(m1);break;
           case 'i':
                    m1=17;F=0;println(m1);break;
           case 'o':
                    m1=18;F=0;println(m1);break;     
           case 'p':
                    m1=19;F=0;println(m1);break;
           case 'a':
                    m1=20;F=0;println(m1);break;
           case 's':
                    m1=-1;F=0;println(m1);break;           
           case 'd':
                    m1=-2;F=0;println(m1);break;           
           case 'f':
                    m1=-3;F=0;println(m1);break;
           case 'g':
                    m1=-4;F=0;println(m1);break;
           case 'h':
                    m1=-5;F=0;println(m1);break;
           case 'j':
                    m1=-6;F=0;println(m1);break;
           case 'k':
                    m1=-7;F=0;println(m1);break;
           case 'l':
                    m1=-8;F=0;println(m1);break;
           case 'z':
                    m1=-9;F=0;println(m1);break;
           case 'x':
                    m1=-10;F=0;println(m1);break;           
           case 'c':
                    m1=-11;F=0;println(m1);break;           
           case 'v':
                    m1=-12;F=0;println(m1);break;
           case 'b':
                    m1=-13;F=0;println(m1);break;
           case 'n':
                    m1=-14;F=0;println(m1);break;
           case 'm':
                    m1=-15;F=0;println(m1);break;
           case ',':
                    m1=-16;F=0;println(m1);break;
           case '.':
                    m1=-17;F=0;println(m1);break;
           case '-':
                    m1=-18;F=0;println(m1);break;
           case 'ò':
                    m1=-19;F=0;println(m1);break;
           case 'à':
                    F=0;m1=-20;println(m1);break;
           case 'ì':
                    F=1;println("Infinity");break;
           default :
                    println();break;
      }
 */
   }
   
  if(H==50 && L==100 ){
    print("input c1= ");
   
    switch(key){
    
         case '0':
                    c1=c1*10+0;println(c1);break;
           case '1':
                    c1=c1*10+1;println(c1);break;
           case '2':
                    c1=c1*10+2;println(c1);break;
           case '3':
                    c1=c1*10+3;println(c1);break;           
           case '4':
                    c1=c1*10+4;println(c1);break;           
           case '5':
                    c1=c1*10+5;println(c1);break;
           case '6':
                    c1=c1*10+6;println(c1);break;
           case '7':
                    c1=c1*10+7;println(c1);break;
           case '8':
                    c1=c1*10+8;println(c1);break;
           case '9':
                    c1=c1*10+9;println(c1);break;
           case '!':
                    c1=c1+0.1;println(c1);F=0;break;
           case '"':
                    c1=c1+0.2;println(c1);F=0;break;
           case '£':
                    c1=c1+0.3;println(c1);F=0;break;           
           case '$':
                    c1=c1+0.4;println(c1);F=0;break;           
           case '%':
                    c1=c1+0.5;println(c1);F=0;break;
           case '&':
                    F=0;c1=c1+0.6;println(c1);break;
           case '/':
                    c1=c1+0.7;F=0;println(c1);break;
           case '(':
                    c1=c1+0.8;F=0;println(c1);break;
           case ')':
                    c1=c1+0.9;F=0;println(c1);break; 
    
    }
     
    if(key==BACKSPACE){c1=0;}
     
     if(key=='-' && c1>=0){c1=c1*-1;}
     if(key=='+' && c1<=0){c1=c1*-1;}
    
   /*
    switch(key){
      
      case '0':
                    c1=0;println(c);break;
           case '1':
                    c1=1;println(c);break;
           case '2':
                    c1=2;println(c);break;
           case '3':
                    c1=3;println(c);break;           
           case '4':
                    c1=4;println(c);break;           
           case '5':
                    c1=5;println(c);break;
           case '6':
                    c1=6;println(c);break;
           case '7':
                    c1=7;println(c);break;
           case '8':
                    c1=8;println(c);break;
           case '9':
                    c1=9;println(c);break;
           case 'q':
                    c1=10;println(c);break;
           case 'w':
                    c1=11;println(c);break;
           case 'e':
                    c1=12;println(c);break;           
           case 'r':
                    c1=13;println(c);break;           
           case 't':
                    c1=14;println(c);break;
           case 'y':
                    c1=15;println(c);break;
           case 'u':
                    c1=16;println(c);break;
           case 'i':
                    c1=17;println(c);break;
           case 'o':
                    c1=18;println(c);break;     
           case 'p':
                    c1=19;println(c);break;
           case 'a':
                    c1=20;println(c);break;
           case 's':
                    c1=-1;println(c);break;           
           case 'd':
                    c1=-2;println(c);break;           
           case 'f':
                    c1=-3;;println(c);break;
           case 'g':
                    c1=-4;println(c);break;
           case 'h':
                    c1=-5;println(c);break;
           case 'j':
                    c1=-6;println(c);break;
           case 'k':
                    c1=-7;println(c);break;
           case 'l':
                    c1=-8;println(c);break;
           case 'z':
                    c1=-9;println(c);break;
           case 'x':
                    c1=-10;println(c);break;           
           case 'c':
                    c1=-11;println(c);break;           
           case 'v':
                    c1=-12;println(c);break;
           case 'b':
                    c1=-13;println(c);break;
           case 'n':
                    c1=-14;println(c);break;
           case 'm':
                    c1=-15;println(c);break;
           case ',':
                    c1=-16;println(c);break;
           case '.':
                    c1=-17;println(c);break;
           case '-':
                    c1=-18;println(c);break;
           case 'ò':
                    c1=-19;println(c);break;
           case 'à':
                    c1=-20;println(c);break;
           default :
                    println();break;
      }
 */
   }

  
  
}
/*for(X2=-300;X2<=800;X2=X2+0.01){
Y2=-m2*X2-q2*10;
point(300+X2,300+Y2);
}*/

