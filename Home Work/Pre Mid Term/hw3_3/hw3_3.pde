void setup(){
  size(600,600);
}
void draw(){
  background(255);
  noSmooth();
  colorMode(HSB); 
  strokeWeight(6);
  for(int i=0;i<600;i+=6){
    for(int j=0;j<600;j+=6){
      stroke(map((i*j*mouseX*mouseY) % 3600,0,3600,0,255),255,255);
      point(i,j);
    }
  }
}
