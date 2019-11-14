int j;
void game() {
  

  shipTimer--;
  background(20);


  int j=0;
  while (j<myGameObjects.size()) {
    GameObject myObj =  myGameObjects.get(j);
    myObj.show();
    myObj.act();
    if (myObj.lives==0) {

      myGameObjects.remove(j);
    } else {

      j++;
    }
  }
  

  px=roomx;
  py=roomy;



  //background(white);
  fill (30, 100);
  //rect (0, 0, width, height);
  switchRoom();
  //color here = map.get(roomx,roomy);
  fill (30, 100);
 // rect (0, 0, width, height);

  if (n) {
    //top
    fill(20);
    rect (0, 0, 1100, 20);
  }
  if (e) {
    //right
    fill(20);
    ellipse (1100, 0, -20, 800);
  }
  if (s) {
    //bottem
    fill(20);
    rect (0, 800, 1100, -20);
  }
  if (w) {
    //left
    fill(20);
    ellipse (0, 0, 20, 800);
  }
  ///////-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-





  ///////-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
  ///////-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


  ///////-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
 

  println("x"+roomx);
  println("y"+roomy);


  while (starCount() <roomx+roomy) { 
    myGameObjects.add(new Stars());
  }
   if (px!=roomx||py!=roomy) { 
starKiller();
  }
  if (starCount() >roomx+roomy) { 
starKiller();
  }
  
  
    if (l==0){
     myGameObjects.add(new MotherShip());
     l++;
  }
  
  myShip.show();
  myShip.act();
  
  if (ShipInteract==true){
    shipInteract();
  }else{
    
    
  }
}


void starKiller() {
  int i=0;
  while (i<myGameObjects.size()) {
    GameObject myObj = myGameObjects.get(i);
    if (myObj instanceof Stars) {
      myObj.lives = 0;
    }
    i++;
  }
}


int starCount() {
  int s = 0;

  int i=0;
  while (i<myGameObjects.size()) {
    GameObject myObj = myGameObjects.get(i);
    if (myObj instanceof Stars) {
      s++;
    }
    i++;
  }

  return s;
}


void switchRoom() {

  n=s=w=e=false;


  color here = map.get(roomx, roomy);
  color north=map.get(roomx, roomy-1);
  color south=map.get(roomx, roomy+1);
  color east=map.get(roomx+1, roomy);
  color west=map.get(roomx-1, roomy);


  if (north!=white2) {
    n=true;
  }
  if (south!=white2) {
    s=true;
  }
  if (east!=white2) {
    e=true;
  }
  if (west!=white2) {
    w=true;
  }
}
