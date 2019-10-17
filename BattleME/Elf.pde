public class Elf extends Creature{

  public Elf(){
    magic = (int)(random(55)+60);
    strength = (int)(random(30)+20);
    life = (int)random(1500,2000);
    setMaxLife(life);
  }
  
  
  public void updateFight(Creature c1){
    int force = (int)(getStrength()*0.2f+getMagic()*0.8f);
    
    if( getLife() < 200)
      force += getLuckyStrike();
    c1.receiveDamage(force);
  }
  
  public void render(int mwx, int mwy){
    fill(0,0,255);
    super.render(mwx,mwy);
    fill(255,255,255);
  }
}  
