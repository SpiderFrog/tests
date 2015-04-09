Table scores,scores2;


scores= loadTable("part1data.csv","header");
int RowCount= scores.getRowCount();
println(RowCount+"total rows in the table");
int id;
for(TableRow row : scores.rows()) {
     
    id = row.getInt("Score");
    println(id);
}
println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");

println();

int i;
int count=0, mean1, mode1, median1;

for(TableRow row : scores.rows()){
  
    id = row.getInt("Score");
    count=count+id;
  

}

mean1=count/RowCount;
count=0;



int count1=0,N=0;
for(i=0;i<=40;i++){
for(TableRow row : scores.rows()){
  
    id = row.getInt("Score");
    if(id==i){count1++;}
  

}

if(count1>count){count=count1;N=i;}
count1=0;
}

mode1=N;
count=0;
//-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
int[] medianX= new int[RowCount];
i=0;
for(TableRow row : scores.rows()){
  
  
  id = row.getInt("Score");
  medianX[i]=id;
  i++;

}



medianX=sort(medianX);

for(i=0;i<RowCount;i++){
  println(medianX[i]);
}
println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");
if(RowCount%2==0){median1=medianX[RowCount/2+1];}
else{median1=medianX[RowCount/2+1];}


int maxFrequency=0,modeScore=0;
int[][] frequencies = new int[RowCount][2];
int fIndex = 0; 
int fCounter = 0;

  for (int index = 0; index < RowCount; index++){
     if (medianX[index] == frequencies[fIndex][0]){
               fCounter++;
    }
    else{frequencies[fIndex][1] = fCounter; 
         frequencies[fIndex+1][0] = medianX[index];
          if (fCounter > maxFrequency) {
        maxFrequency = fCounter;
        modeScore = frequencies[fIndex][0];
      }
      
      fIndex++;
      fCounter = 1;
    }
 
}

for (int index = 0; index < RowCount; index++){
  
  println("the number: "+frequencies[index][0]+" apeared:"+frequencies[index][1]+" times");
  }

println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");


//---------------------------------------------------------------


scores2= loadTable("part2data.csv","header");
int RowCount2= scores2.getRowCount();
println(RowCount2+"total rows in the table");

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


 count1=0;N=0;
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

for (int index = 0; index < RowCount2; index++){
  
  println("the number: "+frequencies2[index][0]+" apeared:"+frequencies2[index][1]+" times");
  }

println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");


println("Mean for year1 = "+mean1);
println("Mode for year1 = "+mode1);
println("Median for year1 = "+median1);
println("the most frequent score was: "+modeScore+" with a frequency of: "+maxFrequency);
println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");
println();
println("Mean for year2 = "+mean2);
println("Mode for year2 = "+mode2);
println("Median for year2 = "+median2);
println("the most frequent score was: "+modeScore2+" with a frequency of: "+maxFrequency2);
