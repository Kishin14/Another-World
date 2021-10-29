class Time {
  public int startTime, currentTime;  
  public boolean canDrawCrop1, canDrawCrop2, canDrawCrop3, canDrawCrop4, canDrawCrop5, canDrawCrop6, canDrawCrop7, canDrawCrop8, 
    canDrawCrop9, canDrawCrop10, canDrawCrop11, canDrawCrop12, canDrawCrop13, canDrawCrop14, canDrawCrop15, canDrawCrop16;
  public boolean resetTime;

  public Time() {
  }

  public void loadTime() {
    startTime = millis();
  }

  public void waitCropTime() {    
    if (actions.groundWet1) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed1 = false;
        actions.plantedSeed1 = false;
        actions.groundWet1 = false;
        canDrawCrop1 = true;
      }
    } else if (actions.groundWet2) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed2 = false;
        actions.plantedSeed2 = false;
        actions.groundWet2 = false;
        canDrawCrop2 = true;
      }
    } else if (actions.groundWet3) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed3 = false;
        actions.plantedSeed3 = false;
        actions.groundWet3 = false;
        canDrawCrop3 = true;
      }
    } else if (actions.groundWet4) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed4 = false;
        actions.plantedSeed4 = false;
        actions.groundWet4 = false;
        canDrawCrop4 = true;
      }
    } else if (actions.groundWet5) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed5 = false;
        actions.plantedSeed5 = false;
        actions.groundWet5 = false;
        canDrawCrop5 = true;
      }
    } else if (actions.groundWet6) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed6 = false;
        actions.plantedSeed6 = false;
        actions.groundWet6 = false;
        canDrawCrop6 = true;
      }
    } else if (actions.groundWet7) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed7 = false;
        actions.plantedSeed7 = false;
        actions.groundWet7 = false;
        canDrawCrop7 = true;
      }
    } else if (actions.groundWet8) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed8 = false;
        actions.plantedSeed8 = false;
        actions.groundWet8 = false;
        canDrawCrop8 = true;
      }
    } else if (actions.groundWet9) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed9 = false;
        actions.plantedSeed9 = false;
        actions.groundWet9 = false;
        canDrawCrop9 = true;
      }
    } else if (actions.groundWet10) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed10 = false;
        actions.plantedSeed10 = false;
        actions.groundWet10 = false;
        canDrawCrop10 = true;
      }
    } else if (actions.groundWet11) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed11 = false;
        actions.plantedSeed11 = false;
        actions.groundWet11 = false;
        canDrawCrop11 = true;
      }
    } else if (actions.groundWet12) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed12 = false;
        actions.plantedSeed12 = false;
        actions.groundWet12 = false;
        canDrawCrop12 = true;
      }
    } else if (actions.groundWet13) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed13 = false;
        actions.plantedSeed13 = false;
        actions.groundWet13 = false;
        canDrawCrop13 = true;
      }
    } else if (actions.groundWet14) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed14 = false;
        actions.plantedSeed14 = false;
        actions.groundWet14 = false;
        canDrawCrop14 = true;
      }
    } else if (actions.groundWet15) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed15 = false;
        actions.plantedSeed15 = false;
        actions.groundWet15 = false;
        canDrawCrop15 = true;
      }
    } else if (actions.groundWet16) {   
      currentTime = millis() - startTime;
      myPort.write("Y");
      if (currentTime > (3000) && resetTime) {
        myPort.write("N");
        actions.groundPlowed16 = false;
        actions.plantedSeed16 = false;
        actions.groundWet16 = false;
        canDrawCrop16 = true;
      }
    }
  }


  public void drawCrop() {
    if (canDrawCrop1) {
      image(sell.crops[actions.groundCrop1], actions.ground1CoordX, actions.ground1CoordY);
      actions.grownCrop1 = true;
    }

    if (canDrawCrop2) {
      image(sell.crops[actions.groundCrop2], actions.ground2CoordX, actions.ground2CoordY);
      actions.grownCrop2 = true;
    }

    if (canDrawCrop3) {
      image(sell.crops[actions.groundCrop3], actions.ground3CoordX, actions.ground3CoordY);
      actions.grownCrop3 = true;
    }

    if (canDrawCrop4) {
      image(sell.crops[actions.groundCrop4], actions.ground4CoordX, actions.ground4CoordY);
      actions.grownCrop4 = true;
    }

    if (canDrawCrop5) {
      image(sell.crops[actions.groundCrop5], actions.ground5CoordX, actions.ground5CoordY);
      actions.grownCrop5 = true;
    }

    if (canDrawCrop6) {
      image(sell.crops[actions.groundCrop6], actions.ground6CoordX, actions.ground6CoordY);
      actions.grownCrop6 = true;
    }

    if (canDrawCrop7) {
      image(sell.crops[actions.groundCrop7], actions.ground7CoordX, actions.ground7CoordY);
      actions.grownCrop7 = true;
    }

    if (canDrawCrop8) {
      image(sell.crops[actions.groundCrop8], actions.ground8CoordX, actions.ground8CoordY);
      actions.grownCrop8 = true;
    }

    if (canDrawCrop9) {
      image(sell.crops[actions.groundCrop9], actions.ground9CoordX, actions.ground9CoordY);
      actions.grownCrop9 = true;
    }

    if (canDrawCrop10) {
      image(sell.crops[actions.groundCrop10], actions.ground10CoordX, actions.ground10CoordY);
      actions.grownCrop10 = true;
    }

    if (canDrawCrop11) {
      image(sell.crops[actions.groundCrop11], actions.ground11CoordX, actions.ground11CoordY);
      actions.grownCrop11 = true;
    }

    if (canDrawCrop12) {
      image(sell.crops[actions.groundCrop12], actions.ground12CoordX, actions.ground12CoordY);
      actions.grownCrop12 = true;
    }

    if (canDrawCrop13) {
      image(sell.crops[actions.groundCrop13], actions.ground13CoordX, actions.ground13CoordY);
      actions.grownCrop13 = true;
    }

    if (canDrawCrop14) {
      image(sell.crops[actions.groundCrop14], actions.ground14CoordX, actions.ground14CoordY);
      actions.grownCrop14 = true;
    }

    if (canDrawCrop15) {
      image(sell.crops[actions.groundCrop15], actions.ground15CoordX, actions.ground15CoordY);
      actions.grownCrop15 = true;
    }

    if (canDrawCrop16) {
      image(sell.crops[actions.groundCrop16], actions.ground16CoordX, actions.ground16CoordY);
      actions.grownCrop16 = true;
    }
  }

  public void timeReset() {
    if (actions.groundWet1 || actions.groundWet2  || actions.groundWet3  || actions.groundWet4  || actions.groundWet5  || actions.groundWet6  || actions.groundWet7
      || actions.groundWet8  || actions.groundWet9  || actions.groundWet10  || actions.groundWet11  || actions.groundWet12  || actions.groundWet13  || actions.groundWet14
      || actions.groundWet15  || actions.groundWet16
      ) {
      resetTime = true;
      startTime = millis();
    }
  }
}
