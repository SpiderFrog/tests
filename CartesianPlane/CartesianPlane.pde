size(600,600);

int i;

background(255);

for(i=0;i<=600;i++){
point(i,300);
}

for(i=0;i<=600;i++){
point(300,i);
}

for (i=0;i<=600;i=i+5){
    ellipse(i,300,0,10);
}
for (i=0;i<=600;i=i+5){
    ellipse(300,i,10,0);
}
