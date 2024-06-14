class Timer{
  private int duration;
  private int startTime;
  private boolean running;
  private int second;
  
  public Timer(int durationInSeconds) {
    this.duration = durationInSeconds;
    this.running = false;
    this.second=0;
  }

  public void start() {
    this.startTime = millis();
    this.running = true;
  }

  public boolean gameRunning() {
    boolean gameRunning=true;
      int elapsedTime = (millis() - startTime) / 1000;
      if (elapsedTime >= duration) {
        running = false;
        gameRunning = false;
      }
      return gameRunning;
    }
  public int getElapsedSeconds() {
    if (running) {
      return (millis() - startTime) / 1000;
    } else {
      return duration;
    }
  }
  public int getSecond(){
    return this.second;
  }
}
