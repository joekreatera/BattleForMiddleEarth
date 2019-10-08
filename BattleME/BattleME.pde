Orc orc1;
Orc orc2;
Elf elf1;
Elf elf2;
void setup(){
  size(800,800);
  orc1 = new Orc();
  orc2 = new Orc();
  elf1 = new Elf();
  elf2 = new Elf();
}
void draw(){
  background(200);
  orc1.move();
  orc2.move();
  elf1.move();
  elf2.move();
  orc1.render(800,800);
  orc2.render(800,800);
  elf1.render(800,800);
  elf2.render(800,800);
  frameRate(10);
}
