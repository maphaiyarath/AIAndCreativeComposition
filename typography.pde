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
PFont font;
Font[] particles;
int quantity = 100;
char[] letters = {'L', 'O', 'V', 'E'};
String text;

void setup() {
  size(600, 400);
  selector = new Selector(width/2, height/2, 50);
  font = createFont("Amarillo.ttf", 20);
  textAlign(CENTER);
  smooth();
  strokeWeight(1);
  particles = new Font[quantity];
  for (int i = 0; i < quantity; i++) {
    particles[i] = new Font();
  }
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
}

void draw() {
  background(229, 230, 224);
  selector.display();
  selector.mouseover(mouseX, mouseY);
}

void mousePressed() {
  if (selector.clicked(mouseX, mouseY)) {
    //
  }
}

void mouseReleased() {
  selector.released();
}