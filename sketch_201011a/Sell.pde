class Sell {
  public PImage[] UI = new PImage[2];
  public PImage[] crops = new PImage[8];
  public boolean drawUI = false;
  private PFont fontSell = new PFont();  
  public int broccoli, carrot, onion, spinach, cabbage, corn, eggplant, watermelon;
  public int totalGain;
  public boolean enableAction;

  public Sell() {
  }

  public void loadUI() {
    UI[0] = loadImage("UI/Sell_UI.png");
    UI[1] = loadImage("UI/Sell_button.png");

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

    fontSell = loadFont("Fonts/CourierNewPSMT-48.vlw");

    for (int i = 0; i < 8; i++) {
      crops[i].resize(80, 80);
    }
    UI[0].resize(1000, 600);
  }

  public void drawSellUI() {
    image(UI[0], 200, 90);

    image(crops[0], 220, 170);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Broccoli x" + broccoli + " ($45)", 300, 230);

    image(crops[1], 220, 270);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Carrot x" + carrot + " ($29)", 300, 330);

    image(crops[2], 220, 370);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Onion Green x" + onion + " ($40)", 300, 430);

    image(crops[3], 220, 470);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Spinach x" + spinach + " ($35)", 300, 530);

    image(crops[4], 720, 170);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Cabbage Green x" + cabbage + " ($75)", 800, 230);

    image(crops[5], 720, 270);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Corn x" + corn + " ($35)", 800, 330);

    image(crops[6], 720, 370);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Eggplant x" + eggplant + " ($38)", 800, 430);

    image(crops[7], 720, 470);
    textFont(fontSell, 30);
    fill(#0D2B76);
    text("Watermelon x" + watermelon + " ($49)", 800, 530);

    textFont(fontSell, 50);
    fill(#0D2B76);
    text("$" + totalGain, 420, 640);
  }

  public void calculateTotalGain() {
    int gainBroccoli = broccoli * 45;
    int gainCarrot = carrot * 29;
    int gainOnion = onion * 40;
    int gainSpinach = spinach * 35;
    int gainCabbage = cabbage * 75;
    int gainCorn = corn * 35;
    int gainEggplant = eggplant * 38;
    int gainWatermelon = watermelon * 49;

    totalGain = gainBroccoli + gainCarrot + gainOnion + gainSpinach + gainCabbage + gainCorn + gainEggplant + gainWatermelon;
  }

  public void placeSell() {
    if (x > 290 && x < 400) {
      if (y > 75 && y < 140) {
        image(UI[1], 200, 250);
        if (inString.equals("ACTION") && !enableAction) {
          drawUI = true;
          enableAction = true;
          character.setEnable(false);
          tool.setEnable(false);
          delay(200);
        } else if (inString.equals("SECUNDARY")) {
          enableAction = false;
          drawUI = false;
          character.setEnable(true);
          tool.setEnable(true);
          delay(100);
        }
      }
    }
    if (drawUI) {
      drawSellUI();
    }
    sellAction();
  }

  public void sellAction() {
    if (inString.equals("ACTION") && enableAction && totalGain > 0) {
      money.setMoney(money.getMoney() + totalGain);
      drawUI = false;
      character.setEnable(true);
      tool.setEnable(true);
      broccoli = 0;
      carrot = 0;
      onion = 0;
      spinach = 0;
      cabbage = 0;
      corn = 0;
      eggplant = 0;
      watermelon = 0;
      totalGain = 0;
      enableAction = false;
      getMoney.play();
      delay(200);
    }
  }
}
