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
PFont fonz;
Population pop;
//Font[] particles;
//int quantity = 100;
//String text;

void setup() {
  size(600, 400);
  frameRate(24);
  int max = 10;
  float rate = 0.05;
  selector = new Selector(50, 100, 50);
  // enable smoothing
  smooth();
  /*particles = new Font[quantity];
  for (int i = 0; i < quantity; i++) {
    particles[i] = new Font();
  }
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);*/
  
  // initialize library
  RG.init(this);
  fonz = createFont("Arial.ttf", 50);
  f = new Font();
  pop = new Population(rate, max);
}

void draw() {
  background(229, 230, 224);
  
  // logic not right for button
  // selector.display();
  selector.mouseover();
  f.display();
  pop.display();
  pop.mouseover(mouseX, mouseY);
  
  // would rather save as .ttf
  if (frameCount % 24 == 0) {
    saveFrame("data/text-###.png");
  }
}

void mousePressed() {
  if (selector.clicked()) {
    pop.select();
    pop.repop();
  }
}

void mouseReleased() {
  selector.released();
}