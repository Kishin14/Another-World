class CharacterPrincipal {  
  public PImage[] person = new PImage[12];
  public int personFrames;
  public boolean enable = true;

  public CharacterPrincipal() {
  }

  public void setEnable(boolean enable) {
    this.enable = enable;
  }

  public void loadImages() {

    person[0] = loadImage("Sprite_Character/persona1.png");
    person[1] = loadImage("Sprite_Character/persona2.png");
    person[2] = loadImage("Sprite_Character/persona3.png");

    person[3] = loadImage("Sprite_Character/persona4.png");
    person[4] = loadImage("Sprite_Character/persona5.png");
    person[5] = loadImage("Sprite_Character/persona6.png");

    person[6] = loadImage("Sprite_Character/persona7.png");
    person[7] = loadImage("Sprite_Character/persona8.png");
    person[8] = loadImage("Sprite_Character/persona9.png");

    person[9] = loadImage("Sprite_Character/persona10.png");
    person[10] = loadImage("Sprite_Character/persona11.png");
    person[11] = loadImage("Sprite_Character/persona12.png");
  }

  public void moveInDirection() {    
    for (int i = 0; i < 12; i++) {
      person[i].resize(100, 100);
    }

    image(person[personFrames], x, y);
    println(inString);

    if (inString.equals("UP") && enable) {
      //if (key == 'W' || key == 'w' && enable) {
      personFrames++;
      if (personFrames > 11 || personFrames < 9) personFrames = 9;        
      y-=20;
      delay(50);
    } else if (inString.equals("DOWN") && enable) {
      //} else if (key == 'S' || key == 's' && enable) {
      personFrames++;
      if (personFrames > 2 || personFrames < 0) personFrames = 0;
      y+=20;
      delay(50);
    } else if (inString.equals("LEFT") && enable) {
      //} else if (key == 'A' || key == 'a' && enable) {
      personFrames++;
      if (personFrames > 5 || personFrames < 3) personFrames = 3;
      x-=20;       
      delay(50);
    } else if (inString.equals("RIGHT") && enable) {
      //} else if (key == 'D' || key == 'd' && enable) {
      personFrames++;
      if (personFrames > 8 || personFrames < 6) personFrames = 6;
      x+=20; 
      delay(50);
    } else if (inString.equals("NOTHING")) {
      personFrames = 1;      
    } 

    //println(x, y);
  }
}
