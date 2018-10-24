void setup(){
  size(800,800);
}
void draw(){
  background(255);
  noSmooth();
  colorMode(HSB); 
  //strokeWeight(6);
 boolean black = true;
  for(int i=0;i<800;i+=100){
    for(int j=0;j<800;j+=100){
      if(!black){
        fill(0);
      }
      else{
        fill(255);
      }
       black = !black;
      rect(j,i,100,100);
    }
    black = !black;
  }
}
