class Selector {
  boolean clicked, mouseover;
  int x, y, d;
  
  Selector(int x, int y, int d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }
  
  void display() {
    noFill();
    stroke(1);
    if (clicked) {
      fill(.5);
    }
    if (mouseover) {
      fill(1);
    }
    ellipse(x, y, d, d);
  }
  
  boolean clicked(int mx, int my) {
    if ((mx == mouseX) && (my == mouseY)) {
      clicked = true;
    } else {
      clicked = false;
    }
    return clicked;
  }
  
  boolean mouseover(int mx, int my) {
    if ((mx == mouseX) && (my == mouseY)) {
      mouseover = true;
    } else {
      mouseover = false;
    }
    return clicked;
  }
  
  void released() {
    clicked = false;
  }
}