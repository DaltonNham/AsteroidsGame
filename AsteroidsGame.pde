Spaceship spaceX;
public void setup() 
{
	size(300,300);
  //your code here
  spaceX = new Spaceship();
}
public void draw() 
{
	background(0);
	spaceX.show();
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
		spaceX.move();
		spaceX.accelerate(1);
	}
}
