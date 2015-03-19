  
void setup(){
size(400,400);
background(255);
}

void draw(){
  

/*

for (int i = 0; i < 400; i++) {
  float r = random(25,50);
  stroke(0,0,r*5);
  line(i, i,-i, i);
}


for (int i = 0; i < 400; i++) {
  float r = random(25,50);
  stroke(r*5,0,0);
  line(i, i,i, -i);
}

for (int i = 0; i < 400; i++) {
  float r = random(25,50);
  stroke(0,r*5,0);
  line(400-i, i,-i,i);
}

for (int i = 0; i < 400; i++) {
  float r = random(25,50);
  stroke(r*5,r*5,0);
  line(400-i, 400-i,i,400-i);
}


*/

/*
for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(r*5,r*5,0);
  line(0, i,100+r,i);
}

for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(0,0,r*5);
  line(400, i,250+r,i);
}

for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(0,r*5,0);
  line(i,0,i,100-r);
}

for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(r*5,0,0);
  line(i,400,i,250+r);
}
*/

for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(0,r*5,0);
  line(200,200,r,i);
}

for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(0,0,r*5);
  line(200,200,i,r);
}

for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(r*5,0,0);
  line(200,200,400-r,i);
}

for (float i = 0; i < 400; i=i+0.1) {
  float r = random(50);
  stroke(r*5);
  line(200,200,i,400-r);
}

/*
for (int i = 0; i < 100; i++) {
  float r = random(-50, 50);
  println(r);
}

for (int i = 0; i < 100; i++) {
  float r = random(-50, 50);
  println(r);
}
// Get a random element from an array
String[] words = { "apple", "bear", "cat", "dog" };
int index = int(random(words.length));  // Same as int(random(4))
println(words[index]);  // Prints one of the four words
*/

}



