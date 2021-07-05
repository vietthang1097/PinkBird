class TwoPipes {
  float x;
  float y;
  float w;
  float h;
  float dx;
  TwoPipes (float xx) {
    x = xx;
    y = 0;
    w = 50;
    h = random(250,350);
    dx = -2;
  }
  void draw(){
    fill(1,255,1);
    rect(x,y,w,h);
    rect(x,h+100,w,height - h - 100);
  }
  void update(){
    x = x + dx;
    if(x <= - 100){
      x = width + 100;
      h = random(300,400);
    }
  }
 //void HitThePipes(){
 //  b.speedx = 0;
 //  b.speedy = 10;
 // }

}
