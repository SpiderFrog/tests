String[] table={"F","M"};
String[] table2=new String[1000];
int i;
int putword; 
int index= int(table2.length);
int countM=0;
int countF=0;

for(i=0;i<index;i++){
  putword=int(random(table.length));
  table2[i]=table[putword];
  }
  
  for(i=0;i<index;i++){
    if(table2[i]=="F"){countF++;}
    else countM++;
    
  }
  println("F= "+countF);
  println("M= "+countM);
  /*
  for(i=0;i<index;i++){
    println(i+"= "+table2[i]);
    }*/
