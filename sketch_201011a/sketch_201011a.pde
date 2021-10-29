import processing.video.*;
import processing.sound.*;
import processing.serial.*;
Movie intro;
SoundFile ambientalSongS, rainSong, soundCashRegister, hoe, getMoney, pick, toWater;

Serial myPort;    // The serial port
PFont myFont;     // The display font
String inString = "";  // Input string from serial port
int lf = 10;      // ASCII linefeed 


int x = 640;
int y = 315;

CharacterPrincipal character = new CharacterPrincipal();
Map map = new Map();
Money money = new Money();
Tools tool = new Tools();
Shop shop = new Shop();
Inventory inventory = new Inventory();
Happiness happiness = new Happiness();
Expansion expansion = new Expansion();
Actions actions = new Actions();
Intro introVideo = new Intro();
Sell sell = new Sell();
Time time = new Time();

void setup() {
  size(1370, 768);
  myPort = new Serial(this, "COM3", 9600); 
  myPort.bufferUntil(lf);
  intro = new Movie(this, "Intro/Intro.mov");
  ambientalSongS = new SoundFile(this, "Songs/AmbientalSong1.mp3");
  rainSong = new SoundFile(this, "Songs/Lluvia.mp3");
  soundCashRegister = new SoundFile(this, "Sounds/Buy.wav"); 
  hoe = new SoundFile(this, "Sounds/Hoe.wav");
  getMoney = new SoundFile(this, "Sounds/Money.wav");
  pick = new SoundFile(this, "Sounds/Pick.wav");
  toWater = new SoundFile(this, "Sounds/ToWater.wav");
  time.loadTime();
  actions.loadGround();
  map.loadMap();
  map.selectRandomMap();
  sell.loadUI();
  character.loadImages();
  tool.loadTools();
  shop.loadCropsUIAndFont();
  inventory.loadCrops();
  expansion.loadUIButtons();
}

void draw() {
  if (introVideo.introState) {
    introVideo.drawIntro();
  } else {
    map.drawMap();
    actions.hoeAction();
    actions.toWaterGround();
    actions.plantAction();
    time.waitCropTime();
    time.drawCrop();  
    actions.pickCrop();
    character.moveInDirection();
    money.drawMoney();
    tool.drawTool();
    sell.placeSell();
    sell.calculateTotalGain();
    shop.placeShop();  
    happiness.drawValue();
    inventory.drawInventoryCrop();
    expansion.buyExpansion();
    println(x, y);
    println(shop.purchaseDone, "", shop.enableAction, " ", shop.getAmount());
    println(actions.groundCrop1, " ", actions.groundCrop5);
    println(time.currentTime, actions.groundPlowed1, actions.plantedSeed1, actions.groundWet1, time.canDrawCrop1);
  }
}  


void serialEvent(Serial p) { 
  inString = p.readString();
  inString = trim(inString);
  //println(inString);
}

void movieEvent(Movie m) {
  intro.read();
}
