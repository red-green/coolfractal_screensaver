int dots = 20000;
int speed = 500;

int ctr = 0;
float a,b,c,j,x,y,z;

void setup() {
  size(displayWidth,displayHeight);
  background(0);
  stroke(255);
  fill(255);
  noSmooth();
  noCursor();
}

boolean sketchFullScreen() {return true;}

void draw() {
  if (ctr < 0) {
    a = random(1);
    b = 0.9998;
    c = 2-2*a;
    j = 0;
    x = 0;
    y = random(1)*12+0.1;
    z = 0;
    
    ctr = dots;
  }
  
  for (int i = 0; i < speed; i++) {
    ctr--;
    z = x;
    x = b*y+j;
    j = a*x+c*pow(x,2)/(1+pow(x,2));
    y = j-z;
    if (ctr%2000 == 0) stroke(random(255),random(255),random(255));
    point((x*20)+(width/2),(y*20)+(height/2));
  }
}

void keyPressed() {
  background(0);
}
