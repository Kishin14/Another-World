class Map {
  private PImage[] Background_Map = new PImage[10];
  private int selectedMap = 0;
  public float randomMap;  


  public Map() {
  }

  public void loadMap() {
    Background_Map[0] = loadImage("Map/Con_Expansion.png");
    Background_Map[1] = loadImage("Map/Sin_Expansion.png");
    Background_Map[2] = loadImage("Map/Humedo_Con_Exp.png");
    Background_Map[3] = loadImage("Map/Humedo_Sin_Exp.png");
  }

  public void drawMap() {
    if (int(randomMap) < 5) {  //Mapa Seco
      if (expansion.getExpansionObtained()) {
        selectedMap = 0;
      } else {
        selectedMap = 1;
      }
    } else if (int(randomMap) > 4) {  //Mapa Humedo
      if (expansion.getExpansionObtained()) {
        selectedMap = 2;
      } else {
        selectedMap = 3;
      }
    }
    image(Background_Map[selectedMap], 0, 0);
  }

  public void selectRandomMap() {
    //randomMap = random(1, 10);
    randomMap = 2;
  }
}
