Spaceship spaceX = new Spaceship();
public void setup() 
{
  //your code here
}
public void draw() 
{
  spaceX.show();
}
public void keyPressed()
{
	if (key == '8')
	{
		spaceX.accelerate(1);
	}
}
