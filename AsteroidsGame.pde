Spaceship spaceX;
Star [] cosmos;
ArrayList <Asteroid> ceres;
public void setup() 
{
	size(500,500);
  //your code here
  spaceX = new Spaceship();
  cosmos = new Star[250];
  ceres = new ArrayList <Asteroid>();
  for (int i = 0; i < cosmos.length; i++)
  {
  	cosmos[i] = new Star();
  }
  for (int j = 0; j <= 15; j++)
  {
  	ceres.add(new Asteroid());
  }

}
public void draw() 
{
	background(0);
	for (int i = 0; i < cosmos.length; i++)
	{
		cosmos[i].show();
	}
  	for (int j = 0; j <= ceres.size()-1; j++)
  	{
		ceres.get(j).show();
		ceres.get(j).move();
		float d = dist(spaceX.getX(), spaceX.getY(), ceres.get(j).getX(), ceres.get(j).getY());
		if (d < 15)
			ceres.remove(j);
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
		spaceX.setDirectionX(0);
		spaceX.setDirectionY(0);
		spaceX.setX((int)(Math.random()*461)+20);
		spaceX.setY((int)(Math.random()*461)+20);
		spaceX.setPointDirection(0);
		spaceX.setPointDirection((int)(Math.random()*361));
	}
}
