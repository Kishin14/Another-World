class Expansion {
  public PImage[] UI_Buttons = new PImage[2];
  public boolean expansionObtained = false;
  public int expansionValue = 3000;

  public Expansion() {
  }

  public void loadUIButtons() {
    UI_Buttons[0] = loadImage("UI/Buy_Button.png");
    UI_Buttons[1] = loadImage("UI/CB_Button.png");
  }

  public boolean getExpansionObtained() {
    return this.expansionObtained;
  }

  public void setExpansionObtained(boolean expansionObtained) {
    this.expansionObtained = expansionObtained;
  }

  public void buyExpansion() {
    if (x > 960 && x < 1080) {
      if (y > 435 && y < 495) {
        if (money.getMoney() >= expansionValue && !expansionObtained) {
          image(UI_Buttons[0], 1120, 575);
          if (inString.equals("ACTION")) {
            soundCashRegister.play();
            setExpansionObtained(true);
            money.setMoney(money.getMoney() - expansionValue);
          }
        } else {
          if (!expansionObtained) {
            image(UI_Buttons[1], 1120, 575);
          }
        }
      }
    }
  }

  public void validateExpansion() {
  }
}
