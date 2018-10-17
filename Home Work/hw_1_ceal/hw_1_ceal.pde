int bgColor = 255;
int bgColor2 =100;

void setup(){
  //first parameter= wdth, second= height
  size(1000, 1000);
  background(bgColor);
  background(bgColor2);
}

void draw(){
  background(bgColor2);
 
  //ellipse(x position, y position, width, height)
  //fill(0,100,100);
  //ellipse(100,100,50,50);
  //sky;
  fill(114,206,227);
  rect (1000,500,2000,1000);
  
  //ground;
  fill(73,184,72);
  rect (500,1000,1000,1000);
  
  //fill(100,0,0);
  //rect(100,100,100,50);
  //house bottom;
  rectMode(CENTER);
  fill(255,255,255);                                               
  rect(500,550,250,250);
  
  //sun;
  rectMode(CENTER);
  fill(251,229,8);
  ellipse(800,150,200,200);
  
  //triangle(x1, y1, x2, y2, x3, y3);
  //roof;
  fill(211,211,211);
  triangle(680, 430, 320,430, 500, 200);
  
  //door;
  rectMode(CENTER);
  fill(211,211,211);
  rect(500,613,50,125);
  
  //window L;
  rectMode(CENTER);
  fill(156,213,232);
  rect(425,550,50,50);
  
  //window R;
  rectMode(CENTER);
  fill(156,213,232);
  rect(575,550,50,50);
  
  //window M;
  rectMode(CENTER);
  fill(156,213,232);
  rect(500,470,150,50);
  
  //window roof;
  rectMode(CENTER);
  fill(156,213,232);
  ellipse(500,375,75,75);
  
  //tree 1
  fill(150,100,50);                                               
  rect(200,550,50,200);
  fill(19,139,67);
  ellipse(200,450,200,200);
  
  //tree 2
  fill(150,100,50);                                               
  rect(800,850,50,200);
  fill(19,139,67);
  ellipse(800,750,200,200);
  
  //river
  fill(44,87,166);
  rect(0,850,600,75);
  
  //lake
  fill(44,87,166);
  ellipse(350,920,350,250);
}
