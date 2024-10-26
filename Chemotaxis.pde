Leaf [] twirly = new Leaf[1100];

void setup() {
  size(400, 400);
  background(0);
  for (int i = 0; i < twirly.length; i++) {
    twirly[i] = new Leaf ((int)(Math.random()*500), (int)(Math.random()*500)); 
  }
}

void draw() {
  for (int i = 0; i < twirly.length; i++) {
    twirly[i].blow();
    twirly[i].show();
      if (dist(mouseX, mouseY, twirly[i].myX, twirly[i].myY) < 50) {
        //twirly[i].myX = (dist(
        twirly[i].myColor = color(0);
      }
      else
        twirly[i].myColor = color((int)(Math.random()*100 + 100), (int)(Math.random()*20 + 50), (int)(Math.random()*50 + 50));
  }
}

class Leaf {
  //3 member variables
  int myX, myY, myColor;
  
  //constructor
  Leaf(int x, int y) {
  myX = x;
  myY = y;
  myColor = color((int)(Math.random()*100 + 100), (int)(Math.random()*20 + 50), (int)(Math.random()*50 + 50));
  }
  
  //other member functions
  void show() {
    fill(myColor);
    ellipse(myX, myY, (int)(Math.random()*10) + 5, (int)(Math.random()*10) + 5);
  }
  
  void blow() {
    myX = myX + (int)(Math.random()*3) - 1;
    myY = myY + (int)(Math.random()*3) - 1;
  }
}
