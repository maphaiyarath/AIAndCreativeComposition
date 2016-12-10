class Font {
  FontInfo info;
  boolean mouseover;
  float fitness;
  int x, y;
  int border = 50;
  RFont rfont;
  RShape group = RG.getText("Hello", "Amarillo.ttf", 100, CENTER);
  RPoint[] points;
  color pink = color(245, 179, 191);
  /*PFont font = createFont("Amarillo.ttf", 20);
  char[] letters = {'L', 'O', 'V', 'E'};*/
  
  Font() {
    textAlign(CENTER);
    strokeWeight(1);
    stroke(0);
    fill(pink);

  }
  
  Font(FontInfo info, int x, int y) {
    this.info = info;
    this.x = x;
    this.y = y;
    fitness = 1;
  }
  
  void render() {
    //
  }
  
  void display() {
    translate (width/2, 3*height/4);
    noFill();
    stroke(0, 0, 200, 150);
    RG.setPolygonizer(RG.ADAPTATIVE);
    group.draw();
    RG.setPolygonizer(RG.UNIFORMLENGTH);
    RG.setPolygonizerLength(map(mouseY, 0, height, 3, 200));
    points = group.getPoints();
    if(points != null) {
      noFill();
      stroke(0, 200, 0);
      beginShape();
      for (int i = 0; i < points.length; i++) {
        vertex(points[i].x, points[i].y);
      }
      endShape();
      fill(0);
      stroke(0);
      for (int i = 0; i < points.length; i++) {
        ellipse(points[i].x, points[i].y, 3, 3);
      }
    }
  }
  
  /*void setPos(int x, int y) {
    this.x = x;
    this.y = y;
    textAlign(CENTER);
    strokeWeight(1);
  }
  
  void display() {
    if (random(1) > .99) {
      textFont(font, int(random(9, 18)));
      text(letters[int(random(4))], x, y + random(12));
      if (random(1) > .99) {
        textFont(font, int(random(18, 60)));
        text(letters[int(random(4))], x, y + random(30));
      }
    }
  }*/
}