Spaceship spaceX;
Star [] cosmos;
ArrayList <Asteroid> ceres;
ArrayList <Bullet> lazer = new ArrayList <Bullet>();
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
	for (int k = 0; k <= lazer.size() - 1; k++)
	{
		lazer.get(k).show();
		lazer.get(k).move();
		if (lazer.get(k).getX() > width || lazer.get(k).getX() < 0)
		{
			lazer.remove(k);
			break;
		}
		else if (lazer.get(k).getY() > height || lazer.get(k).getY() < 0)
		{
			lazer.remove(k);
			break;
		}
		for (int l = ceres.size() - 1; l >= 0; l--)
		{
			float dd = dist(lazer.get(k).getX(), lazer.get(k).getY(), ceres.get(l).getX(), ceres.get(l).getY());
			if (dd < 10)
			{
				ceres.remove(l);
				lazer.remove(k);
				break;
			}
		}
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
	if (key == ' ')
	{
		lazer.add(new Bullet(spaceX));
	}
}