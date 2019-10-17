public class Orc extends Creature{

  public Orc(){
    magic = (int)(random(9)+1);
    strength = (int)(random(90)+50);
    life = (int)random(1000,2500);
  }
  
  public void updateFight(Creature c1){
    int force = (int)(getStrength()*0.7f+getMagic()*0.3f);
    c1.receiveDamage(force);
  }
  
}
