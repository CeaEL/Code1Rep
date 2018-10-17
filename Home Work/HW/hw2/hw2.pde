double get_dist(double x,double y){
   return Math.sqrt(Math.pow((mouseX - x),2) + Math.pow((mouseY - y),2));
}
float get_cos(float x,float a, float radius){
  return x + cos(a) * radius;
}
float get_sin(float x,float a, float radius){
  return x + sin(a) * radius;
}
void star(float x, float y, float radius1, float radius2, int npoints) {
  int d = (int)get_dist(x,y);
  colorMode(HSB); 
  fill(map(d,0,400,0,255),255,255);
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = get_cos(x,a,radius2);
    float sy = get_sin(y,a,radius2);
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
boolean is_near(float x,float y){
  if(get_dist(x,y) <= 50){
    return true;
  }
  else{
    return false;
  }
}
String get_mouse(){
  return "Coordinates : ("+mouseX+","+mouseY+")";
}
void setup(){
  size(800,800);
}
float starx = 400;
float stary = 400;
float ang = 0.0;
void draw(){
  background(255);
  text(get_mouse(),0,10);
  for(int i=0;i<10;i++)
  {
    ang += 0.2;
    pushMatrix();
    star(starx,stary, 300, 75, lerp(0,i,0.1)); 
    popMatrix();
  }
}
