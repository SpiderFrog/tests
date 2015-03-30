void setup(){
size(800,800);
background(255);
}


void draw(){
  char[] table={'R','B','G','Y','P','O'};
char[] table2=new char[1000];
float percentageR;
float percentageB;
float percentageG;
float percentageY;
float percentageP;
float percentageO;
int i;
int putword; 
int index= int(table2.length);
int countR=0;
int countB=0;
int countG=0;
int countY=0;
int countP=0;
int countO=0;
boolean u=true;

for(i=0;i<index;i++){
  putword=int(random(table.length));
  table2[i]=table[putword];
  }
  
  for(i=0;i<index;i++){
    char l=table2[i];
    switch(l){
      case 'R': 
                countR++;break;
      case 'B': 
                countB++;break;
      case 'G': 
                countG++;break; 
      case 'Y': 
                countY++;break;
      case 'P': 
                countP++;break;
      case 'O': 
                countO++;break;                
                




      /*
      if(table2[i]=="R") {countR++;}
      if(table2[i]=="B"){countB++;}
      if(table2[i]=="G"){countG++;}
      if(table2[i]=="Y"){countY++;}
      if(table2[i]=="P"){countP++;}
      if(table2[i]=="O"){countO++;}
    */  
    }
    
  }
  
  percentageR=(float(countR)/index)*100;
  percentageB=(float(countB)/index)*100;
  percentageG=(float(countG)/index)*100;
  percentageY=(float(countY)/index)*100;  
  percentageP=(float(countP)/index)*100;
  percentageO=(float(countO)/index)*100; 
 

  println("R= "+countR);
  println("B= "+countB);
  println("G= "+countG);
  println("Y= "+countY);
  println("P= "+countP);
  println("O= "+countO);
  
  println("R percentage= "+percentageR+"%");
  println("B percentage= "+percentageB+"%");
  println("G percentage= "+percentageG+"%");
  println("Y percentage= "+percentageY+"%");
  println("P percentage= "+percentageP+"%");
  println("O percentage= "+percentageO+"%");
  
  for ( i = 50; i < 100; i++) {
  stroke(0,0,255);
  rect(50, i,countR, i);
 }

}
