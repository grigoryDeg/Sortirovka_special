int[] array = new int[32];
void setup() {
  size(500, 500 );
  for (int i=0; i<array.length; i++) {
    array[i] = (int)random(100);
    
    
  }
  frameRate(10);
}
int i=0;
void draw() {
  background(0,191,255);
fill(192,255,62);
    textSize(30);
    text("Sortirovka",170,30);
  for (int b=0; b<array.length; b++) {
    if (array[i]>array[b]) {
      int temp = array[b];
      array[b] = array[i];
      array[i] = temp;
    }
   fill(255,69,0);
  textSize(10);
  text(array[b], 15 + 15*b, 480 );
  rect(15 + 15*b, 470, 10, (-4*array[b]));
  }
  i++;  
  if (i>array.length-1) {
    noLoop();
  }
}