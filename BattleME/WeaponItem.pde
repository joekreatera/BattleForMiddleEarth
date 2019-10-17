public class WeaponItem extends Item{

    public WeaponItem(){
      super();      
    }
  
    public void take(Creature c1){
      if( c1 instanceof Orc ) 
        c1.addStrength(30);
      else
        c1.addStrength(10);
      setTaken();
    }
    
    public void render(int maxWorldX, int maxWorldY) {
    int dpx = (int)(px/100f*maxWorldX);
    int dpy = (int)(py/100f*maxWorldY);
   
    if( !isTaken() ){
      fill(100,100,100);
      ellipse(dpx, dpy, 6, 6);
    }
   fill(255,255,255);
     
  }
}
