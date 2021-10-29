class Tools {

  private PImage[] tools = new PImage[3];
  private int toolPosition = 0;
  public boolean enable = true;

  public Tools() {
  }

  public void loadTools() {
    tools[0] = loadImage("Tools/Hoe.png");
    tools[1] = loadImage("Tools/SeedBag.png");
    tools[2]= loadImage("Tools/WateringCan.png");

    for (int i = 0; i < 3; i++) {
      tools[i].resize(80, 80);
    }
  }


  public int getPosition() {
    return this.toolPosition;
  }

  public void setPosition(int toolPosition) {
    this.toolPosition = toolPosition;
  }

  public void setEnable(boolean enable) {
    this.enable = enable;
  }

  public void drawTool() {
    image(tools[getPosition()], 42, 28);

    if (inString.equals("SECUNDARY") && enable) {
      if (getPosition() == 0) {
        setHoe();     
        delay(200);
      } else if (getPosition() == 1) {
        setSeedBag();
        delay(200);
      } else if (getPosition() == 2) {
        setWateringCan();
        delay(200);
      }
    }
  }


  public void setHoe() {    
    setPosition(getPosition() + 1);
  }

  public void setSeedBag() {    
    setPosition(getPosition() + 1);
  }

  public void setWateringCan() {    
    setPosition(getPosition() - 2);
  }
}
