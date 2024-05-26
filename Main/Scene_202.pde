public class Scene_202 extends BaseScene {
  @Override
  public int getPreviousScene() { return 202; }

  @Override
  public int getNextScene() { return 203; }
  public void setup() {
    println("Scene_202 : setup");
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("202001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("202002"));
    uiManager.dialogUi.next();
  }
 
  public void draw() {
    pushStyle();
    
    background(255);
    drawManager.drawing();
    uiManager.drawing();
    
    popStyle();
  }
  
  public void mousePressed() {
    if (uiManager.dialogUi.next()) {
      return;
    }
    loadNextScene();
  }
}
