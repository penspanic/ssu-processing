// 모든 x, y는 해당 오브젝트의 센터를 기준으로 합니다.

class Batchu { // 미선
  public int x = 0, y = 0, duration;
  Batchu(int _duration) {
    this.duration = _duration;
  }
  void move(int _x, int _y) {  
    this.x = _x;
    this.y = _y;
  }
  // x와 y좌표를 참고해서 배추의 엉덩이를 그리세요. 
  void draw() {

    noStroke();
    //발
    fill(#E38935);
    ellipse(x - 90, y - 60, 40, 50); // L_발
    ellipse(x + 20, y - 60, 40, 50); // R_발

    //발바닥_화이트
    fill(255);
    ellipse(x - 90, y - 60, 30, 40);// L_발바닥_화이트
    ellipse(x + 20, y - 60, 30, 40);// R_발바닥_화이트

    //발바닥_깜장
    fill(0);
    ellipse(x - 90, y - 58, 15, 15);// L_발바닥_깜장
    ellipse(x - 90, y - 45, 9, 9);
    ellipse(x - 80, y - 53, 9, 9);
    ellipse(x - 100, y - 53, 9, 9);
    ellipse(x + 20, y - 58, 15, 15);// R_발바닥_깜장
    ellipse(x + 20, y - 45, 9, 9);
    ellipse(x + 10, y - 53, 9, 9);
    ellipse(x + 30, y - 53, 9, 9);

    //엉덩이
    fill(#E38935);
    beginShape();
    vertex(x - 130, y - 120);
    bezierVertex(x - 130, y - 45, x - 30, y - 45, x - 30, y - 95);
    bezierVertex(x - 30, y - 50, x + 70, y - 45, x + 70, y - 120);
    bezierVertex(x + 70, y - 190, x - 30, y - 190, x - 30, y - 190);
    bezierVertex(x - 30, y - 190, x - 130, y - 190, x - 130, y - 120);
    endShape();

    //꼬리
    fill(255);
    ellipse(x - 30, y - 150, 50, 50);// L_발바닥_깜장

  }

  Poop makePoop() {  
    // duration(초단위) 간격으로 Poop을 만들어 리턴하세요. 
    // 만약 마우스가 클릭 상태라면, duration을 초기화하고 큰 Poop을 만들어 리턴하세요.
    this.duration++;
    if (this.duration % 2 == 0) {
      return new Poop(50, 100, 30, 50, 3);
    } else {
      return null;
    }
  }
  
}

class Poop { // 재석
  // x좌표, y좌표, x지름, y지름, 속도
  public int x, y, xDiam, yDiam, speed;

  Poop(int x, int y, int xDiam, int yDiam, int speed) {
    this.x = x;
    this.y = y;
    this.xDiam = xDiam;
    this.yDiam = yDiam;
    this.speed = speed;
  }
  // speed에 따라 좌표를 조정하세요.
  // 아래로 똥을 움직이세요. 스피드에 따라 속도가 달라져요.
  void move() {
      
  }
  // x좌표, y좌표, x지름, y지름을 참고해서 똥을 그리세요.
  void draw() {
      
  }
}

class Person {
  // x좌표, y좌표, x지름, y지름, 속도
  public int x, y, xDiam, yDiam, speed;

  Person(int x, int y, int xDiam, int yDiam, int speed) {
    this.x = x;
    this.y = y;
    this.xDiam = xDiam;
    this.yDiam = yDiam;
    this.speed = speed;
  }
  // speed와 키보드의 방향에 따라 좌표를 조정하세요. 
  void move() { // 재은
      
  }
  // 사람을 그리세요 
  void draw() { // 재은
      
  }

  boolean checkIsTouchedPoops(Person person, ArrayList<Poop> poops) {  // 서현
    return true;
  }
}


// 꿈을 펼쳐보세요
class WallPaper { // 나영
  WallPaper() {}
}

Batchu batchu = new Batchu(3);
Person person = new Person(100, 100, 50, 100, 3);
WallPaper WallPaper = new WallPaper();
ArrayList<Poop> poops = new ArrayList<Poop>();

void setup() {
  size(1280, 720);
  background(0);
  poops.add(new Poop(50, 100, 30, 50, 3));
}

// 똥이 화면의 아래를 넘어가면 1점씩 계산해요. 
int calculateScore(ArrayList<Poop> poops) { // 서현
  return 0;
}

void drawScore(int score) { // 은지 

}

void draw() {
  background(255); // 매 프레임마다 배경을 지워줍니다.
  batchu.move(mouseX, 200);
  batchu.draw();
  Poop newPoop = batchu.makePoop();
  if (newPoop != null){
    poops.add(newPoop);
  }

  for(int i = 0; i < poops.size(); i++) {
    Poop poop = poops.get(i);
    poop.draw();
    poop.move();
  }

  person.draw();
  person.move();

}