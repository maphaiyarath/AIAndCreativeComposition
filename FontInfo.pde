class FontInfo {
  float[] fontInfo;
  int len = 25;
  
  FontInfo() {
    fontInfo = new float[len];
    for (int i = 0; i < fontInfo.length; i++) {
      fontInfo[i] = random(0, 1);
    }
  }
  
  FontInfo(float[] newFontInfo) {
    fontInfo = newFontInfo;
  }
  
  float getInfo(int i) {
    return fontInfo[i];
  }
  
  FontInfo crossover(FontInfo second) {
    float[] newFontInfos = new float[fontInfo.length];
    int val = int(random(fontInfo.length));
    for (int i = 0; i < fontInfo.length; i++) {
      if (i > val) {
        newFontInfos[i] = getInfo(i);
      } else {
        newFontInfos[i] = second.getInfo(i);
      }
    }
    FontInfo newF = new FontInfo(newFontInfos);
    return newF;
  }
  
  void evolve(float val) {
    for (int i = 0; i < fontInfo.length; i++) {
      if (random(1) < val) {
        fontInfo[i] = random(0, 1);
      }
    }
  }
}