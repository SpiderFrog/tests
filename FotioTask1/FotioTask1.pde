Table scores;


scores= loadTable("part1data.csv","header");
int RowCount= scores.getRowCount();
println(RowCount+"total rows in the table");
int id;
for(TableRow row : scores.rows()) {
     
    id = row.getInt("Score");
    println(id);
}


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

int[] medianX= new int[RowCount];
i=0;
for(TableRow row : scores.rows()){
  
  
  id = row.getInt("Score");
  medianx[i]=id;
  i++;

}


medianx=sort(medianx);

for(i=0;i<RowCount;i++){
  println(medianx[i]);
}

if(RowCount%2==0){median=median1[RowCount/2+1];}
else{median1=medianx[RowCount/2+1];}

println("Mean for year1 = "+mean1);
println("Mode for year1 = "+mode1);
println("Median for year1 = "+median1);
