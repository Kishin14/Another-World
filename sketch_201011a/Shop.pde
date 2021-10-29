class Shop {
  public PImage[] cropsAndUI = new PImage[11]; //Imagenes
  public int cropPosition = 0; //Posicion del cultivo
  public boolean drawUI = false; //Pintar o mostrar UI
  public PFont fontCorpName = new PFont(); //Fuente de letra
  public int Amount = 0; //Cantidad de cultivos
  public int totalPrice = 0; //Precio Total
  public boolean canBuy = true; //Valida Cantidad con Precio
  public boolean enableUAndD = true; //Validar uso de Arriba y Abajo
  public boolean purchaseDone = false;
  public int contador = 0;
  public boolean enableAction = true;

  public Shop() {
  }

  public void loadCropsUIAndFont() {
    //Rainy
    cropsAndUI[0] = loadImage("Crops/Rainy/Broccoli.png");
    cropsAndUI[1] = loadImage("Crops/Rainy/Carrot.png");
    cropsAndUI[2] = loadImage("Crops/Rainy/OnionGreen.png");
    cropsAndUI[3] = loadImage("Crops/Rainy/Spinach.png");

    //Warm
    cropsAndUI[4] = loadImage("Crops/Warm/CabbageGreen.png");
    cropsAndUI[5] = loadImage("Crops/Warm/Corn.png");
    cropsAndUI[6] = loadImage("Crops/Warm/Eggplant.png");
    cropsAndUI[7] = loadImage("Crops/Warm/Watermelon.png");

    //Interface
    cropsAndUI[8] = loadImage("UI/Shop_UI.png");
    cropsAndUI[9] = loadImage("UI/Sell_button.png");
    cropsAndUI[10] = loadImage("UI/Shop_button.png");

    //Font
    fontCorpName = loadFont("Fonts/CourierNewPSMT-48.vlw");

    //Cambiar tamaño de cultivos
    for (int i = 0; i < 8; i++) {
      cropsAndUI[i].resize(80, 80);
    }
  }

  public void loadSounds() {
  }

  //Getters y Setters

  public void setDrawUI(boolean drawUI) {
    this.drawUI = drawUI;
  }

  public int getCropPosition() {
    return this.cropPosition;
  }

  public void setcropPosition(int cropPosition) {
    this.cropPosition = cropPosition;
  }

  public void setBroccoli(int valueChange) {
    setcropPosition(valueChange);
  }

  public void setCarrot(int valueChange) {
    setcropPosition(valueChange);
  }

  public void setOnionGreen(int valueChange) {
    setcropPosition(valueChange);
  }

  public void setCorn(int valueChange) {
    setcropPosition(valueChange);
  }

  public void setCabbageGreen(int valueChange) {
    setcropPosition(valueChange);
  }

  public void setSpinach(int valueChange) {
    setcropPosition(valueChange);
  }

  public void setEggplant(int valueChange) {
    setcropPosition(valueChange);
  }

  public void setWatermelon(int valueChange) {
    setcropPosition(valueChange);
  }

  public int getAmount() {
    return this.Amount;
  }

  public void setAmount(int Amount) {
    this.Amount = Amount;
  }

  public int getTotalPrice() {
    return this.totalPrice;
  }

  public void setTotalPrice(int totalPrice) {
    this.totalPrice = totalPrice;
  }

  public boolean getCanBuy() {
    return this.canBuy;
  }

  public void setCanBuy(boolean canBuy) {
    this.canBuy = canBuy;
  }


  //Devolver precio del cultivo
  public int returnPrice(int cropPosition) {
    if (cropPosition == 0) {
      return 39;
    } else if (cropPosition == 1) {
      return 25;
    } else if (cropPosition == 2) {
      return 36;
    } else if (cropPosition == 3) {
      return 33;
    } else if (cropPosition == 4) {
      return 65;
    } else if (cropPosition == 5) {
      return 25;
    } else if (cropPosition == 6) {
      return 30;
    } else if (cropPosition == 7) {
      return 41;
    } else {
      return 0;
    }
  }

  //Interaccion con la UI
  public void drawUIAndCorps() {
    image(cropsAndUI[8], 481, 197);

    image(cropsAndUI[getCropPosition()], 560, 382);
    textFont(fontCorpName, 20);
    fill(#031459);    

    //Asigna el texto correspondiente de la imagen con su cultivo y precio
    switch(getCropPosition()) {
    case 0 :
      text("Broccoli", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);      
      break;

    case 1:
      text("Carrot", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);
      break;

    case 2:
      text("OnionGreen", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);
      break;

    case 3:
      text("Spinach", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);
      break;

    case 4:
      text("Cabbage", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);
      break;

    case 5:
      text("Corn", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);
      break;

    case 6:
      text("Eggplant", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);
      break;

    case 7:
      text("Watermelon", 535, 380);
      textFont(fontCorpName, 30);
      text("$" + returnPrice(getCropPosition()), 560, 330);
      break;
    }

    textFont(fontCorpName, 60);
    text(getAmount(), 800, 380);
    fill(#031459);

    textFont(fontCorpName, 30);
    text("$" + getTotalPrice(), 790, 445);
    fill(#031459);

    //Mensaje de cantidad suficiente de dinero con cantidad de compra
    if (!getCanBuy()) {
      textFont(fontCorpName, 20);
      text("Not enough money.", 760, 300);      
      fill(#FF0008);
    } else if (getCanBuy()) {
      textFont(fontCorpName, 20);
      text("", 760, 300);      
      fill(#FF0008);
    }

    //Permitir escoger solo 1 cultivo
    if (getAmount() > 0) {
      enableUAndD = false;
    } else {
      enableUAndD = true;
    }

    //Valida interaccion con los botones en el menu de compra (Aumentar, disminuir cantidad y cambiar el tipo de cultivo)
    if (inString.equals("UP") && enableUAndD) {
      if (getCropPosition() == 0) {
        setBroccoli(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 1) {
        setCarrot(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 2) {
        setOnionGreen(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 3) {
        setSpinach(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 4) {
        setCabbageGreen(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 5) {
        setCorn(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 6) {
        setEggplant(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 7) {
        setWatermelon(getCropPosition() - 7);
        delay(200);
      }
    } else if (inString.equals("DOWN") && enableUAndD) {
      if (getCropPosition() == 0) {
        setBroccoli(getCropPosition() + 7);
        delay(200);
      } else if (getCropPosition() == 1) {
        setCarrot(getCropPosition() - 1);
        delay(200);
      } else if (getCropPosition() == 2) {
        setOnionGreen(getCropPosition() - 1);
        delay(200);
      } else if (getCropPosition() == 3) {
        setSpinach(getCropPosition() + 1);
        delay(200);
      } else if (getCropPosition() == 4) {
        setCabbageGreen(getCropPosition() - 1);
        delay(200);
      } else if (getCropPosition() == 5) {
        setCorn(getCropPosition() - 1);
        delay(200);
      } else if (getCropPosition() == 6) {
        setEggplant(getCropPosition() - 1);
        delay(200);
      } else if (getCropPosition() == 7) {
        setWatermelon(getCropPosition() - 1);
        delay(200);
      }
    } else if (inString.equals("RIGHT")) {
      if ((getTotalPrice() + returnPrice(getCropPosition())) > money.getMoney()) {
        setCanBuy(false);
        delay(200);
      } else {        
        enableAction = true;
        setAmount(getAmount() + 1);
        setTotalPrice(getTotalPrice() + returnPrice(getCropPosition()));
        delay(200);
      }
      contador++;
    } else if (inString.equals("LEFT")) {      
      if (getAmount() == 0) {
        setAmount(0);
        setTotalPrice(0);
      } else {
        enableAction = true;
        setCanBuy(true);
        setAmount(getAmount() - 1);
        setTotalPrice(getTotalPrice() - returnPrice(getCropPosition()));
        delay(200);
      }
      contador++;
    }
  }

  //Posicionar y mostrar la UI con base a la posicion del jugador
  public void placeShop() {
    if (x > 1180 && x < 1270) {
      if (y > 85 && y < 130) {
        if (inventory.getAmountCrops() == 0) {
          image(cropsAndUI[10], 988, 33);
          if (inString.equals("ACTION") && purchaseDone == false) {          
            purchaseDone = true;
            character.setEnable(false);
            tool.setEnable(false);
            setDrawUI(true);
          } else if (inString.equals("SECUNDARY")) {
            setAmount(0);
            setTotalPrice(0);
            setDrawUI(false);
            character.setEnable(true);
            tool.setEnable(true);
            delay(100);
          }
        }
      }
    }
    if (drawUI) {
      drawUIAndCorps();
    }
    if (inventory.getAmountCrops() == 0 && !drawUI) {
      purchaseDone = false;
      setCanBuy(true);
      setAmount(0);
      setTotalPrice(0);
    }
    buyAction();
  }

  public void buyAction() {    
    if (contador > 0) {
      if (inString.equals("ACTION") && purchaseDone && enableAction) {
        if (getCropPosition() == 0) {
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        } else if (getCropPosition() == 1) {
          inventory.setAmountCrops(0);
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        } else if (getCropPosition() == 2) {
          inventory.setAmountCrops(0);
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        } else if (getCropPosition() == 3) {
          inventory.setAmountCrops(0);
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        } else if (getCropPosition() == 4) {
          inventory.setAmountCrops(0);
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        } else if (getCropPosition() == 5) {
          inventory.setAmountCrops(0);
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        } else if (getCropPosition() == 6) {
          inventory.setAmountCrops(0);
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        } else if (getCropPosition() == 7) {
          inventory.setAmountCrops(0);
          putInventoryCrop(getCropPosition(), inventory.getAmountCrops() + getAmount());
        }
        subtractMoney();        
        soundCashRegister.play();
        inventory.purchaseDone2 = true;
        delay(200);
      }
    }
  }

  public void subtractMoney() {   
    inventory.setCropObtained(true);
    money.setMoney(money.getMoney() - getTotalPrice());
    setDrawUI(false);
    character.setEnable(true);
    tool.setEnable(true);
    enableAction = false;    
    delay(200);
  }

  public void putInventoryCrop(int putPosition, int putAmount) {
    inventory.setAmountCrops(putAmount);
    inventory.setInventoryPosition(putPosition);
  }
}
