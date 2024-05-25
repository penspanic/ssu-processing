public class Scene_316 extends BaseScene {
  @Override
  public int getNextScene() { return 317; }
  public void setup() {
    println("Scene_316 : setup");
  }
 
  public void draw() {
    pushStyle();
    
    background(255, 0, 0);
    println("Scene_316 : draw");
    
    popStyle();
  }
  
  public void mousePressed() {
    println("Scene_316 : mousePressed");
  }
}
