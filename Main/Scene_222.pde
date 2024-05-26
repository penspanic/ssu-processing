public class Scene_222 extends BaseScene {
  @Override
  public int getPreviousScene() { return -1; }

  @Override
  public int getNextScene() { return 301; }
  public void setup() {
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("222001"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("222002"));
    uiManager.dialogUi.enqueue(uiManager.getDialogDataById("222003"));
    uiManager.dialogUi.next();
  }
 
  public void draw() {
    pushStyle();
    
    
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
