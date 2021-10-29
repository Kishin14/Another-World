class Inventory {
  private PFont fontInventory = new PFont();
  public PImage[] inventoryCrops = new PImage[8];
  public int inventoryPosition;
  public int amountCrops = 0;
  public boolean cropObtained = false;
  public boolean purchaseDone2 = false;

  public Inventory() {
  }

  public void loadCrops() {
    //Rainy
    inventoryCrops[0] = loadImage("Crops/Rainy/Broccoli.png");
    inventoryCrops[1] = loadImage("Crops/Rainy/Carrot.png");
    inventoryCrops[2] = loadImage("Crops/Rainy/OnionGreen.png");
    inventoryCrops[3] = loadImage("Crops/Rainy/Spinach.png");

    //Warm
    inventoryCrops[4] = loadImage("Crops/Warm/CabbageGreen.png");
    inventoryCrops[5] = loadImage("Crops/Warm/Corn.png");
    inventoryCrops[6] = loadImage("Crops/Warm/Eggplant.png");
    inventoryCrops[7] = loadImage("Crops/Warm/Watermelon.png");

    //Cambiar tamaño de cultivos
    for (int i = 0; i < 8; i++) {
      inventoryCrops[i].resize(50, 50);
    }
  }

  public int getAmountCrops() {
    return this.amountCrops;
  }

  public void setAmountCrops(int amountCrops) {
    this.amountCrops = amountCrops;
  }

  public int getInventoryPosition() {
    return this.inventoryPosition;
  }

  public void setInventoryPosition(int inventoryPosition) {
    this.inventoryPosition =  inventoryPosition;
  }

  public boolean getCropObtained() {
    return this.cropObtained;
  }

  public void setCropObtained(boolean cropObtained) {
    this.cropObtained = cropObtained;
  }

  public void drawInventoryCrop() {
    if (cropObtained && getAmountCrops() > 0) {
      image(inventoryCrops[getInventoryPosition()], 160, 45);
      println(getInventoryPosition());
      fontInventory = loadFont("Fonts/CourierNewPSMT-48.vlw");
      textFont(fontInventory, 25);
      fill(255);
      text(getAmountCrops(), 210, 85);
    }
  }
}
