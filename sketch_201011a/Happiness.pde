class Happiness {
   public int value = 0;
   private PFont fontHappiness = new PFont();
   
   public Happiness() {    
   }
   
   public int getHappiness() {
    return this.value; 
   }
   
   public void setHappiness(int value) {
      this.value = value; 
   }
   
   public void drawValue() {
      fontHappiness = loadFont("Fonts/CourierNewPSMT-48.vlw");
      textFont(fontHappiness, 20);
      fill(255);
      text(getHappiness() + "%", 305, 50); 
   }
}
