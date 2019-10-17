public class HealerItem extends Item{

    public HealerItem(){
      super();      
    }
  
    public void take(Creature c1){
      c1.addLife( (int)(c1.getMaxLife()));
      setTaken();
    }
    
    public void render(int maxWorldX, int maxWorldY) {
    int dpx = (int)(px/100f*maxWorldX);
    int dpy = (int)(py/100f*maxWorldY);
   
    if( !isTaken() ){
      fill(0,255,0);
      ellipse(dpx, dpy, 6, 6);
    }
   fill(255,255,255);
     
  }
}
