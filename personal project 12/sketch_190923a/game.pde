int x=-50;
int y=0;

int i=0;
void game() {
  noStroke();
 //background(180);
if(i<=293){
  if (i % 2 == 0){
    fill(#9E9A41);
  }else if(i % 2 != 0){
    fill(#758918);
  }
//fill(#758918);
  x=x+50;
  if(x>=850){
   y=y+50;
  x=0;
  }
  i++;
}
//x=0;
//y=0;
 rect(x,y,50,50);

  t1(0, 0, true, 0);
  //t1(0, 50, false, 1); 
  //t1(0, 100, true, 2);
  //t1(0, 150, false, 3);
  //t1(0, 200, true, 4);
  //t1(0, 250, false, 0);
  //t1(0, 300, true, 1);
  //t1(0, 350, false, 2);
  //t1(0, 400, true, 3);
  //t1(0, 450, false, 4);
  //t1(0, 500, true, 0);
  //t1(0, 550, false, 0);
  //t1(0, 600, true, 0);
  //t1(0, 650, false, 0);
  //t1(0, 700, true, 0);
  //t1(0, 750, false, 0);
  //t1(0, 800, true, 0);
}
