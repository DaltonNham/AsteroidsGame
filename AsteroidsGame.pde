Spaceship spaceX;
Star [] cosmos;
public void setup() 
{
	size(300,300);
  //your code here
  spaceX = new Spaceship();
  cosmos = new Star[100];
  for (int i = 0; i < cosmos.length; i++)
  {
  	cosmos[i] = new Star();
  }
}
public void draw() 
{
	background(0);
	for (int i = 0; i < cosmos.length; i++)
	{
		cosmos[i].show();
	}
	spaceX.show();
	spaceX.move();
}
public void keyPressed()
{
	if (key == 'd')
	{
		spaceX.turn(5);
	}
	if (key == 'a')
	{
		spaceX.turn(-5);
	}
	if (key == 'w')
	{
		spaceX.accelerate(.1);
	}
	if (key == 's')
	{
		spaceX.setX(0);
		spaceX.setY(0);
		spaceX.setX((int)(Math.random()*261)+20);
		spaceX.setY((int)(Math.random()*261)+20);
		spaceX.setPointDirection(0);
		spaceX.setPointDirection((int)(Math.random()*361));
	}
}
