public class Creature {
  int px;
  int py;
  int sx;
  int sy;
  int magic;
  int strength;
  int life;
  private int movesPassed =0;
  boolean fighting;

  public void setFighting(boolean b) {
    fighting = b;
  }
  public boolean isFighting() {
    return fighting;
  }

  public void receiveDamage(int damage) {
    life -= damage;
  }
  
  public boolean isAlive(){
    return life > 0;
  }

  public int getLife() {
    return life;
  }
  public int getStrength() {
    return strength;
  }

  public int getMagic() {
    return magic;
  }

  public void addMagic(int pts) {
    magic += pts;
  }

  public Creature() {
    px = (int)(random(100));
    py = (int)(random(100));

    sx = calculateSpeed(1,2);
    sy = calculateSpeed(1,2);
  }
  
  private int calculateSpeed(int min, int maxAdvance){
   int sign = random(10)>5?1:-1;
    return (((int)random(maxAdvance))+min)*sign;
  }
  
  public void move() {
    if ( !isFighting() && isAlive() ) {
     
      if( movesPassed++ > 20){
        sx = calculateSpeed(1,2);
        sy = calculateSpeed(1,2);
        movesPassed = 0;
      }
      
      px += sx;// px = px + sx
      py += sy;

      if ( (px >= 100 && sx > 0) ||  (px <= 0 && sx < 0)  ) {
        sx *= -1;
      }
      if ( (py >= 100 && sy > 0)  ||  (py <= 0 && sy < 0)  ) {
        sy *= -1;
      }
      
    }
  }
  
  public void updateFight(Creature c1){
  
  }
  public void render(int maxWorldX, int maxWorldY) {
    int dpx = (int)(px/100f*maxWorldX);
    int dpy = (int)(py/100f*maxWorldY);
    if( isFighting() ){
      fill(255,0,0);
      ellipse(dpx+3,dpy+3,2,2);
    }
    ellipse(dpx, dpy, 6, 6);
    
    if( !isAlive() ){
      fill(0,0,0);
      ellipse(dpx, dpy, 6, 6);
    }
    fill(255,255,255);
  }
}
