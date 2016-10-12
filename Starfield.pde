Particle [] star; //your code here
void setup()
{
	star = new Particle[7500];
	for(int i = 0; i < star.length; i++)
	{
		star[i] = new NormalParticle();
	}
	star[7498] = new OddballParticle();
	star[7499] = new JumboParticle();
	size(800, 800);//your code here
}
void draw()
{
	background(0);
	for(int i = 0; i < star.length; i++)
	{
		star[i].move();
		star[i].show();
	} //your code here
}
class NormalParticle implements Particle
{
	double dTheta, dSpeed;
	int nX, nY, myColor;
	NormalParticle()
	{
		dTheta = (Math.random() * (2*Math.PI));
		nX = 400;
		nY = 400;
		dSpeed = (Math.random() * 25);
		myColor = (int)(Math.random() * 255);
	}
	public void show()
	{
		fill(myColor, myColor, myColor);
		ellipse(nX, nY, 5, 5);
	}
	public void move()
	{
		// if(timer < 125)
		// {
		// 	nX = nX + (int)(Math.cos(dTheta) * dSpeed);
		// 	nY = nY + (int)(Math.sin(dTheta) * dSpeed);
		// }
		// else if(timer >= 125 && timer < 250)
		// {
		// 	nX = nX - (int)(Math.cos(dTheta) * dSpeed);
		// 	nY = nY - (int)(Math.sin(dTheta) * dSpeed);
		// }
		// else
		// {
		// 	timer = 0;
		// }\
	 	nX = nX + (int)(Math.cos(dTheta) * dSpeed);
	 	nY = nY + (int)(Math.sin(dTheta) * dSpeed);
	 	if(nX >= 810 || nX <= -10 || nY >= 810 || nY <= -10)
	 	{
	 		nX = 400;
	 		nY = 400;
	 	}
	}	//your code here
}
interface Particle
{
	public void move();
	public void show();//your code here
}
class OddballParticle implements Particle//uses an interface
{
	double dTheta, dSpeed;
	int nX, nY, myColor;
	OddballParticle()
	{
		dTheta = (Math.random() * (2*Math.PI));
		nX = 400;
		nY = 400;
		dSpeed = (Math.random() * 50);
		myColor = (int)(Math.random() * 255);
	}
	public void show()
	{
		fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
		ellipse(nX, nY, 20, 20);
	}//your code here
	public void move()
	{
	 	nX = nX + (int)(Math.cos(dTheta) * dSpeed);
	 	nY = nY + (int)(Math.sin(dTheta) * dSpeed);
	 	if(nX >= 810 || nX <= -10 || nY >= 810 || nY <= -10)
	 	{
	 		nX = 400;
	 		nY = 400;
	 		dTheta = (Math.random() * (2*Math.PI));
	 	}
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	double dTheta, dSpeed;
	int nX, nY, myColor;
	JumboParticle()
	{
		dTheta = (Math.random() * (2*Math.PI));
		nX = 400;
		nY = 400;
		dSpeed = (Math.random() * 50);
		myColor = (int)(Math.random() * 255);
	}
	public void show()
	{
		fill(myColor);
		ellipse(nX, nY, 50, 50);
	}//your code here
	public void move()
	{
	 	nX = nX + (int)(Math.cos(dTheta) * dSpeed);
	 	nY = nY + (int)(Math.sin(dTheta) * dSpeed);
	 	if(nX >= 810 || nX <= -10 || nY >= 810 || nY <= -10)
	 	{
	 		nX = 400;
	 		nY = 400;
	 		dTheta = (Math.random() * (2*Math.PI));
	 	}
	}	//your code here
}
