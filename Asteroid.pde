class Asteroid extends Floater
{
	private int astRotate;
	private int luck;
	public Asteroid()
	{
		corners = 6;
  		xCorners = new int[corners];
  		yCorners = new int [corners];
  		xCorners[0] = -((int)(Math.random()*6)+10);
  		yCorners[0] = 0;
  		xCorners[1] = -((int)(Math.random()*6)+5);
  		yCorners[1] = ((int)(Math.random()*6)+5);
  		xCorners[2] = ((int)(Math.random()*6)+5);
  		yCorners[2] = ((int)(Math.random()*6)+5);
  		xCorners[3] = ((int)(Math.random()*6)+10);
  		yCorners[3] = 0;
  		xCorners[4] = ((int)(Math.random()*6)+5);
  		yCorners[4] = -((int)(Math.random()*6)+5);
  		xCorners[5] = -((int)(Math.random()*6)+5);
  		yCorners[5] = -((int)(Math.random()*6)+5);
  		luck = ((int)(Math.random()*2));
		if (luck == 1)
		{
			astRotate = -1;
		}
		else
		{
			astRotate = 1;
		}
		myCenterX = ((int)(Math.random()*501));
		myCenterY = ((int)(Math.random()*501));
		myColor = color(150);
		myPointDirection = ((int)(Math.random()*361));
		myDirectionX = ((double)(Math.random()*1.5)-1);
		myDirectionY = ((double)(Math.random()*1.5)-1);
	}
	public void move()
	{
		turn(astRotate);
		super.move();
	}
	//public void show()
	//{
	//	super.show();
	//}
	public void setX(int x){myCenterX = x;}
  	public int getX(){return (int)myCenterX;}
  	public void setY(int y){myCenterY = y;}
  	public int getY(){return (int)myCenterY;}
  	public void setDirectionX(double x){myDirectionX = x;}   
  	public double getDirectionX(){return myDirectionX;}   
  	public void setDirectionY(double y){myDirectionY = y;}   
 	public double getDirectionY(){return myDirectionY;}   
  	public void setPointDirection(int degrees){myPointDirection = degrees;}   
  	public double getPointDirection(){return myPointDirection;} 
}