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
int fCounter = 1;
frequencies[0][0] = medianX[0];

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

for (int index = 0; index < fIndex; index++){
  
  println("the number: "+frequencies[index][0]+" apeared:"+frequencies[index][1]+" times");
  }

println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");


//---------------------------------------------------------------



println("Mean for year1 = "+mean1);
println("Mode for year1 = "+mode1);
println("Median for year1 = "+median1);
println("the most frequent score was: "+modeScore+" with a frequency of: "+maxFrequency);
println("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_");

//-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_




size(800,800);
background(255);
int space=5;
for(i=0;i<fIndex;i++){

  fill(255,0,0);
  rect(space,300,20,-frequencies[i][1]*20);
  space=space+20;
  text(frequencies[i][0],space-15,310);
  }
  
  
  
  

