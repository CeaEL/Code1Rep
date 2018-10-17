int c, x=0;
int y=-1;
PImage s;
void setup() {
  size(600,600);
  frameRate(2000);
  background(50,50,220);
}
void draw() {
    c=(int)mouseX%10;
    stroke(200);
    line(x+c, y, x+5-c, y+5);
    x+=5;
    if (x>600) {
        x=0;
        y+=5;
    }
    if (y>600) {
      y=600;
      s = get();
      background(50,50,220);
      image(s, 0, -5);
    }
}
