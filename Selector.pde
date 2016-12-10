/* Acts as button for user to indicate their choice(s) of font
 */

class Selector {
  boolean clicked, mouseover; // mouse events
  int x, y, d;                // x, y, diameter
  
  // constructor
  Selector(int x, int y, int d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }
  
  // draw selector button
  void display() {
    noFill();
    stroke(0);
    if (clicked) {
      fill(0);
    }
    if (mouseover) {
      fill(255/2);
    }
    ellipse(x, y, d, d);
  }
  
  boolean clicked() {
    if ((x == mouseX) && (y == mouseY)) {
      clicked = true;
    } else {
      clicked = false;
    }
    return clicked;
  }
  
  boolean mouseover() {
    // logic is not right for when mouse is over selector
    if ((x-d/2 >= mouseX) && (mouseX <= x+d/2) && (y-d/4 >= mouseY) && (mouseY <= y+d/4)) {
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