class Ship extends GameObject {

  //instance variables
// changeable
float velo=5;
float fireRate=100;
 //changeable
  int i,x,y;
  PVector direction;
float thrusters;
  //constructor(s)
  Ship() {
    lives = 3;
        thrusters= -0.024;
    location = new PVector (width/2, height/2);
    velocity = new PVector(0, 0);
      velomax = new PVector(10, 10);
    direction = new PVector (0, thrusters);
    i=51;
  }

  //behaviour functions
  void show() {

    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    image(Shipimg, 0, 0);
    stroke(255);
    strokeWeight(1);
   // line(0, 0, 25, 0);
fill(100,100,255,shipTimer*2);
noStroke();
ellipse(0,0,70,70);
fill(255,x);
ellipse(0,0,70,70);





    popMatrix();
  }

  void act() {
    
    super.act();
    if (velocity.mag()>=velo){
     velocity.setMag(velo);; 
    }
    
    
    
    location.add(velocity);
    if (roomx==98){
      roomx=3;
    }
    if (roomy==98){
      roomy=3;
    }
        if (roomx==2){
      roomx=97;
    }
    if (roomy==2){
      roomy=97;
    }
    
    //location.add(velocity);
if (lives<=0){
   mode = gameOver;
}


    if (upkey){
      velocity.add(direction);
    
    }
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(3) );
    if (rightkey) direction.rotate(radians(3) );

    i++;
    if (spacekey&&i>fireRate) {
      myGameObjects.add(new Bullet());
      i=0;
    }
    if (x<=0){
     x=0; 
    }
    x--;
    println("x"+x);
    if (Xkey&&x<1) {
location = new PVector(random(50, 950), random(50, 750));
      x=255;
    }
    
    
    
  
  
  if (n)checkNortExit();
 if(s)checkSouthExit();
 if (e)checkEastExit();
 if (w)checkWestExit();
 
  }

  
  void checkNortExit(){
     if (location.y<-51){
       roomy--;
       location.y=850;
       switchRoom();
       built=false;
   starKiller();
     }
    
  }
   void checkSouthExit(){
      if (location.y>851){
       roomy++;
       location.y=-50;
       switchRoom();
       built=false;
     starKiller();
     }
     
  }
   void checkEastExit(){
     if (location.x>1151){
       roomx++;
       location.x=-50;
       switchRoom();
       built=false;
      starKiller();
     }
     
  }
   void checkWestExit(){
      if (location.x<-51){
       roomx--;
       location.x=1150;
       switchRoom();
      built=false;
     starKiller();
     }
     
  }
}
