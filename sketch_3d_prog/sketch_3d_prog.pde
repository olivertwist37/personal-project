boolean up, down, left, right;
float lx=0,ly=0,lz=0,dx,dy,dz=1,tx,ty=1,tz;

int p=1;
int a=0, z=50;
PImage texture;

PImage map;

float rotx=0, roty=0;
int bs=15;
void setup() {
  size(1000, 800, P3D);

  texture=loadImage("texture.jpg");
  textureMode(NORMAL);
  map=loadImage("map.png");
}

void draw() {
  background (200);
  
  camera(lx,ly,lz,dx+lx,dy+0,dz-1,tz,ty,tz);
  
  
  if (up) lz=lz+5;
  if (down) lz=lz-5;
    if (left) lx=lx+5;
  if (right) lx=lx-5;
 // pushMatrix();

  //rotateY(roty);
  //rotateX(rotx);

  drawMap();


  drawGround();


  //popMatrix();





  //=================================================================
  pushMatrix();
  //int i=0 ;

  //while(i<=100){

  // texturedBox(texture,50, 50, 50, 50);
  //i++;

  //}
  popMatrix();
  //=================================================================
}

//=================================================================
void texturedBox(PImage tex, float size, float x, float y, float z) {
  beginShape(QUADS);
  noStroke();
  texture(tex);
  pushMatrix();
  translate (x, y, z);
  scale(size);



  //z+
  vertex(-1, -1, 1, 0, 0);
  vertex(1, -1, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(-1, 1, 1, 0, 1);
  //z-
  vertex(-1, -1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  vertex(1, 1, -1, 1, 1);
  vertex(-1, 1, -1, 0, 1);
  //top
  vertex(-1, -1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  vertex(1, -1, 1, 1, 1);
  vertex(-1, -1, 1, 0, 1);
  //bottem
  vertex(1, 1, 1, 0, 0);
  vertex(-1, 1, 1, 0, 1);
  vertex(-1, 1, -1, 1, 1);
  vertex(1, 1, -1, 1, 0);
  //left
  vertex(-1, -1, 1, 1, 1);
  vertex(-1, 1, 1, 0, 1);
  vertex(-1, 1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  //right
  vertex(1, -1, 1, 1, 1);
  vertex(1, 1, 1, 0, 1);
  vertex(1, 1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  endShape();
  popMatrix();
}
//=================================================================


void mouseDragged() {
  rotx= rotx +(pmouseY-mouseY)*0.01;
  roty= roty +(pmouseX-mouseX)*-0.01;
}
void grid() {

  //int i=0;
  //while(i<width){
  // line (0,i,height,i);
  // i=i+20;
  //}

  // int j=0;
  //while(j<height){
  // line (0,j,width,j);
  // j=j+20;
  //}
}



void keyPressed() {
  if (keyCode == UP) up = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
}
void keyReleased() {
  if (keyCode == UP) up = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
}
