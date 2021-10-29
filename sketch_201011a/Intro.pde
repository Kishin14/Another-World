class Intro {
  public boolean introState = true;

  public Intro() {
  }

  public void drawIntro() {
    if (introState) {
      intro.play();    
      image(intro, 0, 0, width, height);
    }

    if (inString.equals(("ACTION"))) {
      intro.stop();
      introState = false;
      if (!introState) {
        if (int(map.randomMap) < 5) {
          ambientalSongS.loop();
        } else if (int(map.randomMap) > 4) {
          rainSong.loop();
        }
      }
    }
  }
}
