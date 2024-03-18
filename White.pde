void white(float x, float y, float d){
  strokeWeight(3);
  stroke(10);
  fill(255);
  ellipse(x,y,d*8,d*8);
  fill(0);
  circle(x-d*1.5,y-d*2,d);
  circle(x+d*1.5,y-d*2,d);
  line(x-d,y+d,x-d*3,y+d*1.3);
  line(x+d,y+d,x+d*3,y+d*1.3);
  line(x-d,y+d/2,x-d*3,y+d/2);
  line(x+d,y+d/2,x+d*3,y+d/2);
  line(x-d,y,x-d*3,y-d/2);
  line(x+d,y,x+d*3,y-d/2);
  fill(255,0,0);
  ellipse(x,y+d*2,d*3,d*3);
}
