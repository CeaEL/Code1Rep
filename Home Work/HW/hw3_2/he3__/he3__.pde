void setup(){
  size(600,600);
}
void draw(){
  background(128);
  colorMode(HSB); 
  fill(map((mouseX+mouseY)%600,0,600,0,255),255,255);
   ellipse(mouseX,300,mouseY,mouseY);
  fill(map(Math.abs(mouseX-mouseY)%400,0,400,0,255),255,255);
   ellipse(600-mouseX,300,300-mouseY,300-mouseY);
}
