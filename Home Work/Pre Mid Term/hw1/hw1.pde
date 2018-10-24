boolean insideShape = false;
int shapeX ,shapeY;
final int w = 500,h=500;
int moveX = 1;
int moveY = 1;
boolean bounceOn = true;

void setup(){
  shapeX = w/2;
  shapeY = h/2;
  size(500,500);
}

void drawButton(){
  rect(50,10,100,20);
  fill(0);
  text("Move to random",5,13);
  fill(255);
}
void drawToggleButton(){
  rect(150,10,100,20);
  fill(0);
  if(bounceOn)
    text("Bounce Off",105,13);
  else
    text("Bounce On",105,13);
  fill(255);
}

void mouseReleased(){
  if(mouseX >= 100 && mouseX <= 200 && mouseY >= 0 && mouseY <= 20){
     bounceOn = !bounceOn;
  }
  if(mouseX >= 0 && mouseX <= 100 && mouseY >= 0 && mouseY <= 20){
    shapeX = (int)random(w);
    shapeY = (int)random(h);
  }
}

void moveShape(){
  if(shapeX >= w){
    moveX = -1;
  }
  if(shapeX <= 0){
    moveX = 1;
  }
  if(shapeY >= h){
    moveY = -1;
  }
  if(shapeY <= 0){
    moveY = 1;
  }
  shapeX += moveX;
  shapeY += moveY;
}

void draw(){
  background(100);
  rectMode(CENTER);
  drawButton();
  drawToggleButton();
  if(bounceOn)
    moveShape();
  fill( map(shapeY,0,h,0,100),0, map(shapeX,0,w,100,255));
  rect(shapeX,shapeY,100,100);
  fill(255);
  double dist = Math.sqrt(Math.pow((mouseX - shapeX),2) + Math.pow((mouseY - shapeY),2));
  if(mouseX >= shapeX - 50 && mouseX <= shapeX + 50 && mouseY >= shapeY - 50 && mouseY <= shapeY + 50){
    insideShape = true;
  }
  else{
    insideShape= false;
  }
  println("Distance : "+dist+" inside : "+insideShape);
}
