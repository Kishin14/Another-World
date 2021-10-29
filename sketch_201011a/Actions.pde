class Actions {
  public PImage[] ground = new PImage[3];
  public boolean groundPlowed1, groundPlowed2, groundPlowed3, groundPlowed4, groundPlowed5, groundPlowed6, groundPlowed7, groundPlowed8, 
    groundPlowed9, groundPlowed10, groundPlowed11, groundPlowed12, groundPlowed13, groundPlowed14, groundPlowed15, groundPlowed16;
  public boolean plantedSeed1, plantedSeed2, plantedSeed3, plantedSeed4, plantedSeed5, plantedSeed6, plantedSeed7, plantedSeed8, 
    plantedSeed9, plantedSeed10, plantedSeed11, plantedSeed12, plantedSeed13, plantedSeed14, plantedSeed15, plantedSeed16;
  public boolean groundWet1, groundWet2, groundWet3, groundWet4, groundWet5, groundWet6, groundWet7, groundWet8, 
    groundWet9, groundWet10, groundWet11, groundWet12, groundWet13, groundWet14, groundWet15, groundWet16;
  public int groundCrop1, groundCrop2, groundCrop3, groundCrop4, groundCrop5, groundCrop6, groundCrop7, groundCrop8, 
    groundCrop9, groundCrop10, groundCrop11, groundCrop12, groundCrop13, groundCrop14, groundCrop15, groundCrop16;
  public boolean grownCrop1, grownCrop2, grownCrop3, grownCrop4, grownCrop5, grownCrop6, grownCrop7, grownCrop8, 
    grownCrop9, grownCrop10, grownCrop11, grownCrop12, grownCrop13, grownCrop14, grownCrop15, grownCrop16;
  public int groundPosition;
  public int ground1CoordX, ground2CoordX, ground3CoordX, ground4CoordX, ground5CoordX, ground6CoordX, ground7CoordX, ground8CoordX, 
    ground9CoordX, ground10CoordX, ground11CoordX, ground12CoordX, ground13CoordX, ground14CoordX, ground15CoordX, ground16CoordX;
  public int ground1CoordY, ground2CoordY, ground3CoordY, ground4CoordY, ground5CoordY, ground6CoordY, ground7CoordY, ground8CoordY, 
    ground9CoordY, ground10CoordY, ground11CoordY, ground12CoordY, ground13CoordY, ground14CoordY, ground15CoordY, ground16CoordY;  

  public Actions() {
  }

  public void loadGround() {
    ground[0] = loadImage("Ground/TerrenoArado.png");
    ground[1] = loadImage("Ground/TerrenoHumedo.jpg");
    ground[2] = loadImage("Ground/MontonTierra.png");

    for (int i = 0; i < 2; i++) {
      ground[i].resize(90, 90);
    }
    ground[2].resize(80, 60);
  }

  public void hoeAction() {    
    if (x >= 460 && x <= 510) {  //Ground 1
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop1 && !groundPlowed1) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground1CoordX = 495;
            ground1CoordY = 438;
            groundPlowed1 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground1CoordX = 495;
            ground1CoordY = 438;
            groundPlowed1 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 5
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop5 && !groundPlowed5) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground5CoordX = 492;
            ground5CoordY = 650;
            groundPlowed5 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground5CoordX = 492;
            ground5CoordY = 650;
            groundPlowed5 = true;
            delay(200);
          }
        }
      }
    } else if (x >= 320 && x <= 380) { //Ground 2
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop2 && !groundPlowed2) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground2CoordX = 355;
            ground2CoordY = 436;
            groundPlowed2 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground2CoordX = 355;
            ground2CoordY = 436;
            groundPlowed2 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 6
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop6 && !groundPlowed6) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground6CoordX = 355;
            ground6CoordY = 650;
            groundPlowed6 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground6CoordX = 355;
            ground6CoordY = 650;
            groundPlowed6 = true;
            delay(200);
          }
        }
      }
    } else if (x >= 180 && x <= 240) {  //Ground 3
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop3 && !groundPlowed3) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground3CoordX = 215;
            ground3CoordY = 436;
            groundPlowed3 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground3CoordX = 215;
            ground3CoordY = 436;
            groundPlowed3 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 7
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop7 && !groundPlowed7) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground7CoordX = 215;
            ground7CoordY = 640;
            groundPlowed7 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground7CoordX = 215;
            ground7CoordY = 640;
            groundPlowed7 = true;
            delay(200);
          }
        }
      }
    } else if (x >= 40 && x <= 100) { //Ground 4
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop4 && !groundPlowed4) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground4CoordX = 83;
            ground4CoordY = 436;
            groundPlowed4 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground4CoordX = 83;
            ground4CoordY = 436;
            groundPlowed4 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) {//Ground 8
        if (inString.equals("ACTION") && tool.getPosition() == 0 && !grownCrop8 && !groundPlowed8) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground8CoordX = 85;
            ground8CoordY = 650;
            groundPlowed8 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground8CoordX = 85;
            ground8CoordY = 650;
            groundPlowed8 = true;
            delay(200);
          }
        }
      }
    } else if (x >= 780 && x <= 840) { //Ground 9
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained() && !grownCrop9 && !groundPlowed9) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground9CoordX = 820;
            ground9CoordY = 438;
            groundPlowed9 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground9CoordX = 820;
            ground9CoordY = 438;
            groundPlowed9 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 13
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained() && !grownCrop13 && !groundPlowed13) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground13CoordX = 822;
            ground13CoordY = 640;
            groundPlowed13 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground13CoordX = 822;
            ground13CoordY = 640;
            groundPlowed13 = true;
            delay(200);
          }
        }
      }
    } else if (x >= 920 && x <= 980) { //Ground 10
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained() && !grownCrop10 && !groundPlowed10) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground10CoordX = 960;
            ground10CoordY = 438;
            groundPlowed10 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground10CoordX = 960;
            ground10CoordY = 438;
            groundPlowed10 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 14
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained() && !grownCrop14 && !groundPlowed14) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground14CoordX = 960;
            ground14CoordY = 640;
            groundPlowed14 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground14CoordX = 960;
            ground14CoordY = 640;
            groundPlowed14 = true;
            delay(200);
          }
        }
      }
    } else if (x >= 1060 && x <= 1120) { //Ground 11
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained()&& !grownCrop11 && !groundPlowed11) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground11CoordX = 1098;
            ground11CoordY = 438;
            groundPlowed11 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground11CoordX = 1098;
            ground11CoordY = 438;
            groundPlowed11 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 15
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained() && !grownCrop15 && !groundPlowed15) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground15CoordX = 1098;
            ground15CoordY = 645;
            groundPlowed15 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground15CoordX = 1098;
            ground15CoordY = 645;
            groundPlowed15 = true;
            delay(200);
          }
        }
      }
    } else if (x >= 1200 && x <= 1260) { //Ground 12
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained() && !grownCrop12 && !groundPlowed12) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground12CoordX = 1238;
            ground12CoordY = 438;
            groundPlowed12 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground12CoordX = 1238;
            ground12CoordY = 438;
            groundPlowed12 = true;
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 16
        if (inString.equals("ACTION") && tool.getPosition() == 0 && expansion.getExpansionObtained() && !grownCrop16 && !groundPlowed16) {
          hoe.play();
          if (int(map.randomMap) < 5) {
            groundPosition = 0;
            ground16CoordX = 1232;
            ground16CoordY = 643;
            groundPlowed16 = true;
            delay(200);
          } else if (int(map.randomMap) > 4) {
            groundPosition = 1;
            ground16CoordX = 1232;
            ground16CoordY = 643;
            groundPlowed16 = true;
            delay(200);
          }
        }
      }
    }
    if (groundPlowed1) {
      image(ground[groundPosition], ground1CoordX, ground1CoordY);
    } 
    if (groundPlowed2) {
      image(ground[groundPosition], ground2CoordX, ground2CoordY);
    }
    if (groundPlowed3) {
      image(ground[groundPosition], ground3CoordX, ground3CoordY);
    }
    if (groundPlowed4) {
      image(ground[groundPosition], ground4CoordX, ground4CoordY);
    }
    if (groundPlowed5) {
      image(ground[groundPosition], ground5CoordX, ground5CoordY);
    }
    if (groundPlowed6) {
      image(ground[groundPosition], ground6CoordX, ground6CoordY);
    }
    if (groundPlowed7) {
      image(ground[groundPosition], ground7CoordX, ground7CoordY);
    }
    if (groundPlowed8) {
      image(ground[groundPosition], ground8CoordX, ground8CoordY);
    }
    if (groundPlowed9) {
      image(ground[groundPosition], ground9CoordX, ground9CoordY);
    }
    if (groundPlowed10) {
      image(ground[groundPosition], ground10CoordX, ground10CoordY);
    }
    if (groundPlowed11) {
      image(ground[groundPosition], ground11CoordX, ground11CoordY);
    }
    if (groundPlowed12) {
      image(ground[groundPosition], ground12CoordX, ground12CoordY);
    }
    if (groundPlowed13) {
      image(ground[groundPosition], ground13CoordX, ground13CoordY);
    }
    if (groundPlowed14) {
      image(ground[groundPosition], ground14CoordX, ground14CoordY);
    }
    if (groundPlowed15) {
      image(ground[groundPosition], ground15CoordX, ground15CoordY);
    }
    if (groundPlowed16) {
      image(ground[groundPosition], ground16CoordX, ground16CoordY);
    }
  }

  public void plantAction() {
    if (x >= 460 && x <= 510) {  //Ground 1
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed1 && inventory.getAmountCrops() > 0 && !plantedSeed1) {     
          if (int(map.randomMap) < 5) {
            ground1CoordX = 495;
            ground1CoordY = 438;
            plantedSeed1 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);   
            groundCrop1 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {            
            ground1CoordX = 495;
            ground1CoordY = 438;
            plantedSeed1 = true;            
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);   
            groundCrop1 = inventory.getInventoryPosition();
            groundWet1 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 5
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed5 && inventory.getAmountCrops() > 0 && !plantedSeed5) {
          if (int(map.randomMap) < 5) {
            ground5CoordX = 492;
            ground5CoordY = 650;
            plantedSeed5 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop5 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground5CoordX = 492;
            ground5CoordY = 650;
            plantedSeed5 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop5 = inventory.getInventoryPosition();
            groundWet5 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    } else if (x >= 320 && x <= 380) { //Ground 2
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed2 && inventory.getAmountCrops() > 0 && !plantedSeed2) {
          if (int(map.randomMap) < 5) {
            ground2CoordX = 355;
            ground2CoordY = 436;
            plantedSeed2 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop2 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground2CoordX = 355;
            ground2CoordY = 436;
            plantedSeed2 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop2 = inventory.getInventoryPosition();
            groundWet2 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 6
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed6 && inventory.getAmountCrops() > 0 && !plantedSeed6) {
          if (int(map.randomMap) < 5) {
            ground6CoordX = 355;
            ground6CoordY = 650;
            plantedSeed6 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop6 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground6CoordX = 355;
            ground6CoordY = 650;
            plantedSeed6 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop6 = inventory.getInventoryPosition();
            groundWet6 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    } else if (x >= 180 && x <= 240) {  //Ground 3
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed3 && inventory.getAmountCrops() > 0 && !plantedSeed3) {
          if (int(map.randomMap) < 5) {
            ground3CoordX = 215;
            ground3CoordY = 436;
            plantedSeed3 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop3 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground3CoordX = 215;
            ground3CoordY = 436;
            plantedSeed3 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop3 = inventory.getInventoryPosition();
            groundWet3 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 7
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed7 && inventory.getAmountCrops() > 0 && !plantedSeed7) {
          if (int(map.randomMap) < 5) {
            ground7CoordX = 215;
            ground7CoordY = 640;
            plantedSeed7 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop7 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground7CoordX = 215;
            ground7CoordY = 640;
            plantedSeed7 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop7 = inventory.getInventoryPosition();
            groundWet7 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    } else if (x >= 40 && x <= 100) { //Ground 4
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed4 && inventory.getAmountCrops() > 0 && !plantedSeed4) {
          if (int(map.randomMap) < 5) {
            ground4CoordX = 83;
            ground4CoordY = 436;
            plantedSeed4 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop4 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground4CoordX = 83;
            ground4CoordY = 436;
            plantedSeed4 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop4 = inventory.getInventoryPosition();
            groundWet4 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) {//Ground 8
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed8 && inventory.getAmountCrops() > 0 && !plantedSeed8) {
          if (int(map.randomMap) < 5) {
            ground8CoordX = 85;
            ground8CoordY = 650;
            plantedSeed8 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop8 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground8CoordX = 85;
            ground8CoordY = 650;
            plantedSeed8 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop8 = inventory.getInventoryPosition();
            groundWet8 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    } else if (x >= 780 && x <= 840) { //Ground 9
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed9 && inventory.getAmountCrops() > 0  && expansion.getExpansionObtained() && !plantedSeed9) {
          if (int(map.randomMap) < 5) {
            ground9CoordX = 820;
            ground9CoordY = 438;
            plantedSeed9 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop9 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground9CoordX = 820;
            ground9CoordY = 438;
            plantedSeed9 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop9 = inventory.getInventoryPosition();
            groundWet9 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 13
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed13 && inventory.getAmountCrops() > 0 && expansion.getExpansionObtained() && !plantedSeed13) {
          if (int(map.randomMap) < 5) {
            ground13CoordX = 822;
            ground13CoordY = 640;
            plantedSeed13 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop13 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground13CoordX = 822;
            ground13CoordY = 640;
            plantedSeed13 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop13 = inventory.getInventoryPosition();
            groundWet13 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    } else if (x >= 920 && x <= 980) { //Ground 10
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed10 && inventory.getAmountCrops() > 0 && expansion.getExpansionObtained() && !plantedSeed10) {
          if (int(map.randomMap) < 5) {
            ground10CoordX = 960;
            ground10CoordY = 438;
            plantedSeed10 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop10 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground10CoordX = 960;
            ground10CoordY = 438;
            plantedSeed10 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop10 = inventory.getInventoryPosition();
            groundWet10 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 14
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed14 && inventory.getAmountCrops() > 0 && expansion.getExpansionObtained() && !plantedSeed14) {
          if (int(map.randomMap) < 5) {
            ground14CoordX = 960;
            ground14CoordY = 640;
            plantedSeed14 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop14 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground14CoordX = 960;
            ground14CoordY = 640;
            plantedSeed14 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop14 = inventory.getInventoryPosition();
            groundWet14 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    } else if (x >= 1060 && x <= 1120) { //Ground 11
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed11 && inventory.getAmountCrops() > 0 && expansion.getExpansionObtained() && !plantedSeed11) {
          if (int(map.randomMap) < 5) {
            ground11CoordX = 1098;
            ground11CoordY = 438;
            plantedSeed11 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop11 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground11CoordX = 1098;
            ground11CoordY = 438;
            plantedSeed11 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop11 = inventory.getInventoryPosition();
            groundWet11 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 15
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed15 && inventory.getAmountCrops() > 0 && expansion.getExpansionObtained() && !plantedSeed15) {
          if (int(map.randomMap) < 5) {
            ground15CoordX = 1098;
            ground15CoordY = 645;
            plantedSeed15 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop15 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground15CoordX = 1098;
            ground15CoordY = 645;
            plantedSeed15 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop15 = inventory.getInventoryPosition();
            groundWet15 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    } else if (x >= 1200 && x <= 1260) { //Ground 12
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed12 && inventory.getAmountCrops() > 0 && expansion.getExpansionObtained() && !plantedSeed12) {
          if (int(map.randomMap) < 5) {
            ground12CoordX = 1238;
            ground12CoordY = 438;
            plantedSeed12 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop12 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground12CoordX = 1238;
            ground12CoordY = 438;
            plantedSeed12 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop12 = inventory.getInventoryPosition();
            groundWet12 = true;
            time.timeReset();
            delay(200);
          }
        }
      } else if (y >= 575 && y <= 635) { //Ground 16
        if (inString.equals("ACTION") && tool.getPosition() == 1 && groundPlowed16 && inventory.getAmountCrops() > 0 && expansion.getExpansionObtained() && !plantedSeed16) {
          if (int(map.randomMap) < 5) {
            ground16CoordX = 1232;
            ground16CoordY = 643;
            plantedSeed16 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop16 = inventory.getInventoryPosition();
            delay(200);
          } else if (int(map.randomMap) > 4) {
            ground16CoordX = 1232;
            ground16CoordY = 643;
            plantedSeed16 = true;
            inventory.setAmountCrops(inventory.getAmountCrops() - 1);
            groundCrop16 = inventory.getInventoryPosition();
            groundWet16 = true;
            time.timeReset();
            delay(200);
          }
        }
      }
    }
    if (plantedSeed1) {
      image(ground[2], ground1CoordX, ground1CoordY);
    }
    if (plantedSeed2) {
      image(ground[2], ground2CoordX, ground2CoordY);
    }
    if (plantedSeed3) {
      image(ground[2], ground3CoordX, ground3CoordY);
    }
    if (plantedSeed4) {
      image(ground[2], ground4CoordX, ground4CoordY);
    }
    if (plantedSeed5) {
      image(ground[2], ground5CoordX, ground5CoordY);
    }
    if (plantedSeed6) {
      image(ground[2], ground6CoordX, ground6CoordY);
    }
    if (plantedSeed7) {
      image(ground[2], ground7CoordX, ground7CoordY);
    }
    if (plantedSeed8) {
      image(ground[2], ground8CoordX, ground8CoordY);
    }
    if (plantedSeed9) {
      image(ground[2], ground9CoordX, ground9CoordY);
    }
    if (plantedSeed10) {
      image(ground[2], ground10CoordX, ground10CoordY);
    }
    if (plantedSeed11) {
      image(ground[2], ground11CoordX, ground11CoordY);
    }
    if (plantedSeed12) {
      image(ground[2], ground12CoordX, ground12CoordY);
    }
    if (plantedSeed13) {
      image(ground[2], ground13CoordX, ground13CoordY);
    }
    if (plantedSeed14) {
      image(ground[2], ground14CoordX, ground14CoordY);
    }
    if (plantedSeed15) {
      image(ground[2], ground15CoordX, ground15CoordY);
    }
    if (plantedSeed16) {
      image(ground[2], ground16CoordX, ground16CoordY);
    }
  }

  public void toWaterGround() {
    if (x >= 460 && x <= 510) {  //Ground 1
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed1 && !groundWet1) {
          toWater.play();
          groundWet1 = true;              
          time.timeReset();          
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 5
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed5 && !groundWet5) {
          toWater.play();
          groundWet5 = true;
          time.timeReset();
          delay(200);
        }
      }
    } else if (x >= 320 && x <= 380) { //Ground 2
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed2 && !groundWet2) {
          toWater.play();
          groundWet2 = true;
          time.timeReset();
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 6
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed6 && !groundWet6) {
          toWater.play();
          groundWet6 = true;
          time.timeReset();
          delay(200);
        }
      }
    } else if (x >= 180 && x <= 240) {  //Ground 3
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed3 && !groundWet3) {
          toWater.play();
          groundWet3 = true;
          time.timeReset();
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 7
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed7 && !groundWet7) {
          toWater.play();
          groundWet7 = true;
          time.timeReset();
          delay(200);
        }
      }
    } else if (x >= 40 && x <= 100) { //Ground 4
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed4 && !groundWet4) {
          toWater.play();
          groundWet4 = true;
          time.timeReset();
          delay(200);
        }
      } else if (y >= 575 && y <= 635) {//Ground 8
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed8 && !groundWet8) {
          toWater.play();
          groundWet8 = true;
          time.timeReset();
          delay(200);
        }
      }
    } else if (x >= 780 && x <= 840) { //Ground 9
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed9 && !groundWet9) {
          toWater.play();
          groundWet9 = true;         
          time.timeReset();
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 13
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed13  && expansion.getExpansionObtained() && !groundWet13) {
          toWater.play();
          groundWet13 = true;
          time.timeReset();
          delay(200);
        }
      }
    } else if (x >= 920 && x <= 980) { //Ground 10
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed10  && expansion.getExpansionObtained() && !groundWet10) {
          toWater.play();
          groundWet10 = true;
          time.timeReset();
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 14
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed14  && expansion.getExpansionObtained() && !groundWet14) {
          toWater.play();
          groundWet14 = true;
          time.timeReset();
          delay(200);
        }
      }
    } else if (x >= 1060 && x <= 1120) { //Ground 11
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed11  && expansion.getExpansionObtained() && !groundWet11) {
          toWater.play();
          groundWet11 = true;        
          time.timeReset();
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 15
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed15  && expansion.getExpansionObtained() && !groundWet15) {
          toWater.play();
          groundWet15 = true;
          time.timeReset();
          delay(200);
        }
      }
    } else if (x >= 1200 && x <= 1260) { //Ground 12
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed12  && expansion.getExpansionObtained() && !groundWet12) {
          toWater.play();
          groundWet12 = true;        
          time.timeReset();
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 16
        if (inString.equals("ACTION") && tool.getPosition() == 2 && plantedSeed16  && expansion.getExpansionObtained() && !groundWet16) {
          toWater.play();
          groundWet16 = true;
          time.timeReset();
          delay(200);
        }
      }
    }

    if (groundWet1) {
      image(ground[1], ground1CoordX, ground1CoordY);
    } 
    if (groundWet2) {
      image(ground[1], ground2CoordX, ground2CoordY);
    }
    if (groundWet3) {
      image(ground[1], ground3CoordX, ground3CoordY);
    }
    if (groundWet4) {
      image(ground[1], ground4CoordX, ground4CoordY);
    }
    if (groundWet5) {
      image(ground[1], ground5CoordX, ground5CoordY);
    }
    if (groundWet6) {
      image(ground[1], ground6CoordX, ground6CoordY);
    }
    if (groundWet7) {
      image(ground[1], ground7CoordX, ground7CoordY);
    }
    if (groundWet8) {
      image(ground[1], ground8CoordX, ground8CoordY);
    }
    if (groundWet9) {
      image(ground[1], ground9CoordX, ground9CoordY);
    }
    if (groundWet10) {
      image(ground[1], ground10CoordX, ground10CoordY);
    }
    if (groundWet11) {
      image(ground[1], ground11CoordX, ground11CoordY);
    }
    if (groundWet12) {
      image(ground[1], ground12CoordX, ground12CoordY);
    }
    if (groundWet13) {
      image(ground[1], ground13CoordX, ground13CoordY);
    }
    if (groundWet14) {
      image(ground[1], ground14CoordX, ground14CoordY);
    }
    if (groundWet15) {
      image(ground[1], ground15CoordX, ground15CoordY);
    }
    if (groundWet16) {
      image(ground[1], ground16CoordX, ground16CoordY);
    }
  }

  public void pickCrop() {
    if (x >= 460 && x <= 510) {  //Ground 1
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop1) {
          pick.play();
          grownCrop1 = false;
          time.canDrawCrop1 = false;
          verifyCrop(groundCrop1);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 5
        if (inString.equals("ACTION") && grownCrop5) {
          pick.play();
          grownCrop5 = false;
          time.canDrawCrop5 = false;
          verifyCrop(groundCrop5);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    } else if (x >= 320 && x <= 380) { //Ground 2
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop2) {
          pick.play();
          grownCrop2 = false;
          time.canDrawCrop2 = false;
          verifyCrop(groundCrop2);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 6
        if (inString.equals("ACTION") && grownCrop6) {
          pick.play();
          grownCrop6 = false;
          time.canDrawCrop6 = false;
          verifyCrop(groundCrop6);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    } else if (x >= 180 && x <= 240) {  //Ground 3
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop3) {
          pick.play();
          grownCrop3 = false;
          time.canDrawCrop3 = false;
          verifyCrop(groundCrop3);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 7
        if (inString.equals("ACTION") && grownCrop7) {
          pick.play();
          grownCrop7 = false;
          time.canDrawCrop7 = false;
          verifyCrop(groundCrop1);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    } else if (x >= 40 && x <= 100) { //Ground 4
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop4) {
          pick.play();
          grownCrop4 = false;
          time.canDrawCrop4 = false;
          verifyCrop(groundCrop4);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) {//Ground 8
        if (inString.equals("ACTION") && grownCrop8) {
          pick.play();
          grownCrop8 = false;
          time.canDrawCrop8 = false;
          verifyCrop(groundCrop8);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    } else if (x >= 780 && x <= 840) { //Ground 9
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop9) {
          pick.play();
          grownCrop9 = false;
          time.canDrawCrop9 = false;
          verifyCrop(groundCrop9);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 13
        if (inString.equals("ACTION") && grownCrop13  && expansion.getExpansionObtained()) {
          pick.play();
          grownCrop13 = false;
          time.canDrawCrop13 = false;
          verifyCrop(groundCrop13);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    } else if (x >= 920 && x <= 980) { //Ground 10
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop10  && expansion.getExpansionObtained()) {
          pick.play();
          grownCrop10 = false;
          time.canDrawCrop10 = false;
          verifyCrop(groundCrop10);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 14
        if (inString.equals("ACTION") && grownCrop14  && expansion.getExpansionObtained()) {
          pick.play();
          grownCrop14 = false;
          time.canDrawCrop14 = false;
          verifyCrop(groundCrop14);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    } else if (x >= 1060 && x <= 1120) { //Ground 11
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop11  && expansion.getExpansionObtained()) {
          pick.play();
          grownCrop11 = false;
          time.canDrawCrop11 = false;
          verifyCrop(groundCrop11);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 15
        if (inString.equals("ACTION") && grownCrop15  && expansion.getExpansionObtained()) {
          pick.play();
          grownCrop15 = false;
          time.canDrawCrop15 = false;
          verifyCrop(groundCrop15);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    } else if (x >= 1200 && x <= 1260) { //Ground 12
      if (y >= 375 && y <= 415) {
        if (inString.equals("ACTION") && grownCrop12  && expansion.getExpansionObtained()) {
          pick.play();
          grownCrop12 = false;
          time.canDrawCrop12 = false;
          verifyCrop(groundCrop12);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      } else if (y >= 575 && y <= 635) { //Ground 16
        if (inString.equals("ACTION") && grownCrop16  && expansion.getExpansionObtained()) {
          pick.play();
          grownCrop16 = false;
          time.canDrawCrop16 = false;
          verifyCrop(groundCrop16);
          happiness.setHappiness(happiness.getHappiness() + int(random(1, 8)));
          delay(200);
        }
      }
    }
  }

  public void verifyCrop(int groundCrop) {
    switch(groundCrop) {
    case 0:
      sell.broccoli++;
      break;
    case 1:
      sell.carrot++;
      break;
    case 2:
      sell.onion++;
      break;
    case 3:
      sell.spinach++;
      break;
    case 4:
      sell.cabbage++;
      break;
    case 5:
      sell.corn++;
      break;
    case 6:
      sell.eggplant++;
      break;
    case 7:
      sell.watermelon++;
      break;
    }
  }
}
