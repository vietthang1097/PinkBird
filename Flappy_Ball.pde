float gravity = 0.1;
Bird b = new Bird(300,400);
Bird b2 = new Bird(300,500);
ArrayList<TwoPipes> pipes = new ArrayList<TwoPipes>();
void setup(){
  size(1000,600);
  textSize(50);
  pipes.add(new TwoPipes(0));
  pipes.add(new TwoPipes(250));
  pipes.add(new TwoPipes(500));
  pipes.add(new TwoPipes(750));
  pipes.add(new TwoPipes(1000));
}
void draw(){
  background(255,255,255);
  b.draw();
  b.update();
  b2.draw();
  b2.update();
  for(TwoPipes p: pipes){
    p.draw();
    p.update();
    b.hitPipes(p);
    b2.hitPipes(p);
    if(b.isHitted && b2.isHitted){
      p.dx = 0;
      fill(1,1,1);
      text("GAME OVER", 300,200);
      text("Score: ", 350,250);
      text(b.s, 500,250);
    }
  }
}
void keyPressed(){
  if(key == ' '){
    b.flap();
  }
}
void mousePressed(){
    if(mousePressed){
    b2.flap();
  }
}
