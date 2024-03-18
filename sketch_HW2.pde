float [] x1,y1,d1,vx;
float a=400,x2,y2,a1,count=0;
void setup(){
  size(1000,800);
  x1= new float[10];
  y1= new float[10];
  d1= new float[10];
  vx=new float[10];
  for(int i=0; i<10;i++){
    x1[i]=1000+i*700;
    y1[i]=random(0,800);
    d1[i]=25;
    vx[i]=10;
  }
}
void draw(){
  background(255);
   if(keyPressed){
    if(key == 'w') a-=20;
    else if(key == 's') a+=20;
  }
  a1=a;
  char1(100,a);
  for(int i=0;i<10;i++){
    x1[i] -= vx[i];
    x2=x1[i];
    y2=y1[i];
    white(x1[i],y1[i],d1[i]);
    collide();
  }
 if(count!=0){
   fill(255,0,0);
   square(0,0,50000);
   char2(180,400,10);
   textSize(50);
   text("Game Over",400,400);
  }
  else if(x1[9]<=-155){
    fill(0,128,0);
    square(0,0,50000);
    char2(180,400,10);
    textSize(50);
    text("You Win!!",400,400);
  }
}
