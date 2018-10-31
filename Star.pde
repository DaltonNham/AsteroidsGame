class Star //note that this class does NOT extend Floater
{
	private int starX, starY;
  public Star()
  {
  	starX = ((int)(Math.random()*501));
  	starY = ((int)(Math.random()*501));
  }
  public void show()
  {
  	noStroke();
  	fill(255,255,0);
  	ellipse(starX, starY, 5, 5);
  }
}
