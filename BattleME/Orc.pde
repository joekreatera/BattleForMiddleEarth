public class Orc extends Creature{

  public Orc(){
    magic = (int)(random(9)+1);
    strength = (int)(random(90)+50);
    life = (int)random(1000,2500);
  }
  
}
