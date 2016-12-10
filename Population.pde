class Population {
  float rate;         // rate at which font style changes / mutates
  int max;            // capacity / number of fonts in cycle
  Font[] pop;         // group of fonts in cycle
  ArrayList fittest;  // fonts that 'survive'
  int cycles;         // different epochs
  
  Population(float rate, int max) {
    this.rate = rate;
    this.max = max;
    pop = new Font[max];
    fittest = new ArrayList();
    cycles = 0;
    for (int i = 0; i < pop.length; i++) {
      pop[i] = new Font(new FontInfo(), 50 + i * 75, height/3);
    }
  }
  
  // draw each font in cycle
  void display() {
    for (int i = 0; i < pop.length; i++) {
      pop[i].render();
    }
  }
  
  // call mouseover function for each font
  void mouseover(int mx, int my) {
    for (int i = 0; i < pop.length; i++) {
      pop[i].mouseover(mx, my);
    }
  }
  
  // need to implement interactive way to select font...
  void select() {
    fittest.clear();
    float totalFitness = getTotalFitness();
    for (int i = 0; i < pop.length; i++) {
      float normalize = pop[i].getFitness()/totalFitness;
      int n = (int) (normalize*1000.0);
      for (int j = 0; j < n; j++){
        fittest.add(pop[i]);
      }
    }
  }
  
  // generate new collection of fonts based on ones you've chosen
  void repop() {
    for (int i = 0; i < pop.length; i++) {
      int font1 = int(random(fittest.size()));
      int font2 = int(random(fittest.size()));
      Font new1 = (Font) fittest.get(font1);
      Font new2 = (Font) fittest.get(font2);
      FontInfo info1 = new1.getInfo();
      FontInfo info2 = new2.getInfo();
      FontInfo offspring = info1.crossover(info2);
      offspring.evolve(rate);
      pop[i] = new Font(offspring, 50 + i * 75, height/3);
    }
    cycles++;
  }
  
  int getCycles() {
    return cycles;
  }
  
  float getTotalFitness() {
    float total = 0;
    for (int i = 0; i < pop.length; i++) {
      total = pop[i].getFitness();
    }
    return total;
  }
}