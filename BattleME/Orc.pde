public class Orc extends Creature{

  public Orc(){
    magic = (int)(random(9)+1);
    strength = (int)(random(90)+50);
    life = (int)random(1000,2500);
    setMaxLife(life);
  }
  
  public void updateFight(Creature c1){
    int force = (int)(getStrength()*0.7f+getMagic()*0.3f);
    
    if( getLife() < 200)
      force += getLuckyStrike();
      
    c1.receiveDamage(force);
  }
  
}
