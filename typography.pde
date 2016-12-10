// interactive selection
// heredity, variation, selection
// create a population of n elements, each with randomly generated dna
// --> from fonts in data folder
// 1) evaluate fitness: fitness = quantitative measure
// 2) create a mating pool
// 1) crossover

// geomerative 'extends 2D geometry operations to facilitate generative geometry'
import geomerative.*;

String message = "the quick brown fox jumps over the lazy dog";
Selector selector;
Font f;
//Font[] particles;
//int quantity = 100;
//String text;

void setup() {
  size(600, 400);
  frameRate(24);
  selector = new Selector(width/2, height/2, 50);
  // enable smoothing
  smooth();
  /*particles = new Font[quantity];
  for (int i = 0; i < quantity; i++) {
    particles[i] = new Font();
  }
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);*/
  
  // initialize library
  RG.init(this);
  f = new Font();
}

void draw() {
  background(229, 230, 224);
  //selector.display();
  selector.mouseover(mouseX, mouseY);
  f.display();
  /*
  rfont = new RFont("Amarillo.ttf", 32, RFont.CENTER);
  rgroup = rfont.toGroup(message);
  rgroup = rgroup.toPolygonGroup();
  rpoints = rgroup.getPoints();
  for (int i = 0; i < quantity; i++) {
    int num = int(i/quantity*rpoints.length);
    particles[i].setPos(int(rpoints[num].x + width/2), int(rpoints[num].y + height/2));
  }
  stroke(0);
  fill(0);
  ellipse(0, 0, width, height);
  fill(.9 - random(.2) - float(mouseX)/1200, .5 + random(.5), 1);
  for (int i = 0; i < quantity; i++) {
    particles[i].display();
  }*/
}

void mousePressed() {
  if (selector.clicked(mouseX, mouseY)) {
    //
  }
}

void mouseReleased() {
  selector.released();
}