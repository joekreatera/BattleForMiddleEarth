Orc orc1;
Orc orc2;
Elf elf1;
Elf elf2;
Item i1;
Item i2;
Item i3;

void setup(){
  size(800,800);
  orc1 = new Orc();
  orc2 = new Orc();
  elf1 = new Elf();
  elf2 = new Elf();
  i1 = new HealerItem();
  i2 = new AmuletItem();
  i3 = new WeaponItem();
}

boolean areCloseEnough(Creature c1, Creature c2){
  if( c1 instanceof Elf && c2 instanceof Elf) return false;
  if( c1 instanceof Orc && c2 instanceof Orc) return false;
 
 if( !c1.isAlive() || !c2.isAlive() ) return false;
 
  float dist = sqrt( pow(c1.px-c2.px,2) +  pow(c1.py - c2.py, 2) );
  if( dist < 8 )
    return true;
  return false;
}


boolean areCloseEnough(Creature creature, Item item){
 
 
 if( !creature.isAlive() ) return false;
 if( item.isTaken() ) return false;
 
  float dist = sqrt( pow(creature.px-item.px,2) +  pow(creature.py - item.py, 2) );
  if( dist < 8 )
    return true;
  return false;
}

void check(Creature c1, Creature c2){
   
  
  if( areCloseEnough(c1,c2)){
    c1.setFighting(true);
    c2.setFighting(true);
    c1.updateFight(c2);
    c2.updateFight(c1);
    println(c1.getLife() + " // " + c2.getLife());
    
    if( !c1.isAlive() || !c2.isAlive()){
      c1.setFighting(false);
      c2.setFighting(false);      
    } 
  }
}

void check(Creature c, Item i){
  if( areCloseEnough(c,i)){
    i.take(c);
  }
}
void draw(){
  background(200); 
  check(orc1,elf1); check(orc1, elf2);
  check(orc2,elf1); check(orc2, elf2);
  check(orc1, i1); check(orc1, i2); check(orc1, i3);
  check(orc2, i1); check(orc2, i2); check(orc2, i3);
  check(elf1, i1); check(elf1, i2); check(elf1, i3);
  check(elf2, i1); check(elf2, i2); check(elf2, i3);
  orc1.move();
  orc2.move();
  elf1.move();
  elf2.move();
  orc1.render(800,800);
  orc2.render(800,800);
  elf1.render(800,800);
  elf2.render(800,800);
  i1.render(800,800);
  i2.render(800,800);
  i3.render(800,800);
  

  frameRate(10);
}
