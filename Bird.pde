class Bird {
  float x;
  float y;
  float speedx;
  float speedy;
  boolean isHitted;
  int s;
    Bird(float xx, float yy){
      x = xx;
      y = yy;
      speedx = 0;
      speedy = 0;
      isHitted = false;
      s=0;
    }
    void draw(){
      if( speedy < 0){
        birdUp();
      }
      else 
      birdDown();
    }
    void update(){
      speedy = speedy + gravity;
      y = y + speedy; 
      hitGround();
      score();
    }
    void flap(){
      //line (x,y,x-5,y-5);
      //line (x,y,x+5,y-5); 
      if (speedy <= 6){
        speedy = speedy - 4;
      }
    }  
    void birdUp(){
       fill(255,1,255);
       circle(x,y,25);
       line (x,y,x-5,y-5);
       line (x,y,x+5,y-5); 
    }
    void birdDown(){
       fill(255,1,1);
       circle(x,y,25);
       line (x,y-10,x-5,y-5);
       line (x,y-10,x+5,y-5); 
    }
    boolean hitGround(){
      if(y >= height-25){
        speedy = 0;
        return true;
      }
      return false;
    }
    void hitPipes(TwoPipes p){
       if((x >= p.x && x <= p.x+p.w && y >= p.y && y <= p.y+p.h) ||(x >= p.x && x <=p.x + p.w && y >= p.h + 150 && y <= height)){
         println("HittingPipes");
         //speedx = 0;
         speedy = 10;
         isHitted = true;
       }
       if(x == p.x + p.w){
         s = s + 1;
       }
    }
    void score(){
      fill(1,1,1);
      text(s,400,100);
    }
}
