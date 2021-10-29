class Crops {
  public PImage[] crops = new PImage[9];

  public Crops() {
  }

  public void loadCrops() {
    //Rainy
    crops[0] = loadImage("Crops/Rainy/Broccoli.png");
    crops[1] = loadImage("Crops/Rainy/Carrot.png");
    crops[2] = loadImage("Crops/Rainy/OnionGreen.png");
    crops[3] = loadImage("Crops/Rainy/Spinach.png");

    //Warm
    crops[4] = loadImage("Crops/Warm/CabbageGreen.png");
    crops[5] = loadImage("Crops/Warm/Corn.png");
    crops[6] = loadImage("Crops/Warm/Eggplant.png");
    crops[7] = loadImage("Crops/Warm/Watermelon.png");

    //Terrain
    crops[8] = loadImage("Corps/MontonTierra.png");
  }
}
