public class AmuletItem extends Item{

    public AmuletItem(){
      super();      
    }
  
    public void take(Creature c1){
      if( c1 instanceof Orc ) 
        setTaken();
      else
        c1.addMagic(40);
      setTaken();
    }
    
    public void render(int maxWorldX, int maxWorldY) {
    int dpx = (int)(px/100f*maxWorldX);
    int dpy = (int)(py/100f*maxWorldY);
   
    if( !isTaken() ){
      fill(0,255,255);
      ellipse(dpx, dpy, 6, 6);
    }
   fill(255,255,255);
     
  }
}
