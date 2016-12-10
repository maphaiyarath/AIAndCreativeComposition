class Font {
  FontInfo info;
  boolean mouseover;
  float fitness;
  int x, y;
  int border = 50;
  RFont rfont;
  RShape group = RG.getText("Genetic", "Amarillo.ttf", 120, CENTER);
  RPoint[] points;
  color pink = color(245, 179, 191);
  
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
    // this is where you should vary the different indices in info array
  }
  
  float getFitness() {
    return fitness;
  }
  
  FontInfo getInfo() {
    return info;
  }
  
  void mouseover(int mx, int my) {
    ellipse(int(x - border/2), int(y - border/2), int(border), int(border));
    if ((x == mouseX) && (y == mouseY)) {
      mouseover = true;
      fitness += 0.25;
    } else {
      mouseover = false;
    }
  }
  
  void display() {
    translate (width/2, 3*height/4);
    noFill();
    stroke(0, 20);
    RG.setPolygonizer(RG.ADAPTATIVE);
    group.draw();
    RG.setPolygonizer(RG.UNIFORMLENGTH);
    RG.setPolygonizerLength(map(mouseY, 0, height, 3, 200));
    points = group.getPoints();
    if(points != null) {
      noFill();
      stroke(133, 148, 153);
      beginShape();
      for (int i = 0; i < points.length; i++) {
        vertex(points[i].x, points[i].y);
      }
      endShape();
      fill(pink);
      stroke(245, 179, 191);
      for (int i = 0; i < points.length; i++) {
        ellipse(points[i].x, points[i].y, 5, 5);
      }
    }
  }
  
  // how to save font? geomerative only offers saving file as 
  
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