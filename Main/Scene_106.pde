public class Scene_106 extends BaseScene {
  @Override
  public int getNextScene() { return 107; }
  public void setup() {
    println("Scene_106 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_106 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_106 : mousePressed");
  }
}
