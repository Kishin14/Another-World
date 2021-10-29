class Money {
  private PFont fontMoney = new PFont();  
  private int initialMoney = 9999;

  public Money() {
  }

  public int getMoney() {
    return this.initialMoney;
  }

  public void setMoney(int initialMoney) {
    this.initialMoney = initialMoney;
  }

  public void drawMoney() {
    fontMoney = loadFont("Fonts/CourierNewPSMT-48.vlw");
    textFont(fontMoney, 40);
    fill(255);
    text(getMoney(), 478, 79);
  }
}
