public class Creature{
  int px;
  int py;
  int sx;
  int sy;
  int magic;
  int strength;
  int life;
  
  boolean fighting;
  
  public void setFighting(boolean b){
    fighting = b;
  }
  public boolean isFighting(){
    return fighting;
  }
  
  public void receiveDamage(int damage){
    life -= damage;
  }
  
  public int getLife(){
    return life;
  }
  public int getStrength(){
    return strength;
  }
  
  public int getMagic(){
    return magic;
  }
  
  public void addMagic(int pts){
    magic += pts;
  }
  
  public Creature(){
    px = (int)(random(100));
    py = (int)(random(100));
    
    int sign = random(10)>5?1:-1;
    sx = (((int)random(2))+1)*sign;
    sign = random(10)>5?1:-1;
    sy = (((int)random(2))+1)*sign;
    
    
  }
  public void move(){
    px += sx;// px = px + sx
    py += sy;
    
    if( (px >= 100 && sx > 0) ||  (px <= 0 && sx < 0)  ){
      sx *= -1;
    }
    if( (py >= 100 && sy > 0)  ||  (py <= 0 && sy < 0)  ){
      sy *= -1;
    }
  }
  public void render(int maxWorldX, int maxWorldY){
    int dpx = (int)(px/100f*maxWorldX);
    int dpy = (int)(py/100f*maxWorldY);
    ellipse(dpx,dpy,6,6);
  }
}
