class Item{
  
  boolean taken;
  int px;
  int py;
  
  int moreMagic = 0;
  int moreLife = 0;
  int moreStrength = 0;
  public Item(){
     px = (int)(random(100));
    py = (int)(random(100));
  }
  
  public boolean isTaken(){
    return taken; 
  }
  public void take(Creature c1){
    c1.addMagic(moreMagic);
    c1.addLife(moreLife);
    c1.addStrength(moreStrength);
    setTaken();
  }

  public void setTaken(){
    taken = true;
  }

  public void render(int maxWorldX, int maxWorldY) {
    int dpx = (int)(px/100f*maxWorldX);
    int dpy = (int)(py/100f*maxWorldY);
   
    if( !isTaken() ){
      fill(255,0,255);
      ellipse(dpx, dpy, 6, 6);
    }
   fill(255,255,255);
     
  }
}
