
Table scores2;

scores2= loadTable("part2data.csv","header");
int RowCount2= scores2.getRowCount();
println(RowCount2+"total rows in the table");
int id,i;
int count=0;
for(TableRow row : scores2.rows()) {
     
    id = row.getInt("Score");
    println(id);
}


println();


int  mean2, mode2, median2;
count=0;


for(TableRow row : scores2.rows()){
  
    id = row.getInt("Score");
    count=count+id;
  

}

mean2=count/RowCount2;
count=0;

int count1=0,N=0;
for(i=0;i<=40;i++){
for(TableRow row : scores2.rows()){
  
    id = row.getInt("Score");
    if(id==i){count1++;}
  

}

if(count1>count){count=count1;N=i;}
count1=0;
}

mode2=N;
count=0;
println();
//-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
int[] medianY= new int[RowCount2];
i=0;
for(TableRow row : scores2.rows()){
  
  
  id = row.getInt("Score");
  medianY[i]=id;
  i++;

}


medianY=sort(medianY);

for(i=0;i<RowCount2;i++){
  println(medianY[i]);
}

if(RowCount2%2==0){median2=medianY[RowCount2/2+1];}
else{median2=medianY[RowCount2/2+1];}

int maxFrequency2=0,modeScore2=0;
int[][] frequencies2 = new int[RowCount2][2];
int fIndex2 = 0; 
int fCounter2 = 0;
frequencies2[0][0] = medianY[0];

      
  
      
  for (int index = 0; index < RowCount2; index++){
     if (medianY[index] == frequencies2[fIndex2][0]){
               fCounter2++;
    }
    else{frequencies2[fIndex2][1] = fCounter2; 
         frequencies2[fIndex2+1][0] = medianY[index];
        
          if (fCounter2 > maxFrequency2) {
        maxFrequency2 = fCounter2;
        modeScore2 = frequencies2[fIndex2][0];
      }
      
      fIndex2++;
      fCounter2 = 1;
    }
 
}
println();
for (int index = 0; index < fIndex2; index++){
  
  println("the number: "+frequencies2[index][0]+" apeared: "+frequencies2[index][1]+" times");
  }

println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");

println();
println("Mean for year2 = "+mean2);
println("Mode for year2 = "+mode2);
println("Median for year2 = "+median2);
println("the most frequent score was: "+modeScore2+" with a frequency of: "+maxFrequency2);


size(800,800);
background(255);
int space=5;

 for(i=0;i<fIndex2;i++){

  fill(255,0,0);
  rect(space,300,20,-frequencies2[i][1]*20);
  space=space+20;
   text(frequencies2[i][0],space-15,310);
  }
