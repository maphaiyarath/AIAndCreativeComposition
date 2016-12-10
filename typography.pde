// interactive selection

// heredity, variation, selection

// create a population of n elements, each with randomly generated dna
// --> from fonts in data folder

// 1) evaluate fitness: fitness = quantitative measure
// 2) create a mating pool
// 1) crossover

String message = "the quick brown fox jumps over the lazy dog";
Selector selector;

void setup() {
  size(600, 400);
  selector = new Selector(width/2, height/2, 50);
}

void draw() {
  background(229, 230, 224);
  selector.display();
}

void mousePressed() {
  //
}

void mouseReleased() {
  //
}