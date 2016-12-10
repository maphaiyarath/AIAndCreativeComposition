class Font {
  FontInfo info;
  boolean mouseover;
  float fitness;
  int x, y;
  int border = 50;
  
  Font() {
    //
  }
  
  Font(FontInfo info, int x, int y) {
    this.info = info;
    this.x = x;
    this.y = y;
    fitness = 1;
  }
  
  Font(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void display() {
    //float 
  }
}