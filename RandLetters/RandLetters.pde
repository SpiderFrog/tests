String[] table={"a","b","c","d","e","f","h","i","j","k","l","m","n","o","p","q","r","s","t","u","w","x","y","z"};
String[] table2=new String[1000];
int i;
int I;
int putword; 
int index= int(table.length);

for(i=0;i<1000;i++){
  putword=int(random(table.length));
  table2[i]=table[putword];
  }
  
  for(i=0;i<=1000;i=i+4){
    println("");
    for(I=i;I<=i+4;I++){
    print(table2[I]);
  }  
  }
