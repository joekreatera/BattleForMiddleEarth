Creature orc1;
void setup(){
  size(800,800);
  orc1 = new Creature();
}

void draw(){
  
  background(200);
  orc1.move();
  orc1.render(800,800);
}
