void collide(){
  float dx=x2-100;
  float dy=y2-a1;
  float f=sqrt(dx*dx+dy*dy);
  if(f<175){
    fill(255,0,0);
    square(0,0,50000);
    char2(180,400,10);
    textSize(50);
    text("Game Over",400,400);
    count+=1000;
  }
}
