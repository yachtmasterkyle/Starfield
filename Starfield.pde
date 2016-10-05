NormalParticle [] star; //your code here
int timer = 0;
void setup()
{
	star = new NormalParticle[5000];
	for(int i = 0; i < star.length; i++)
	{
		star[i] = new NormalParticle();
	}
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
	timer++;
}
class NormalParticle
{
	double dTheta, dSpeed;
	int nX, nY, myColor;
	NormalParticle()
	{
		dTheta = (Math.random() * (2*Math.PI));
		nX = 400;
		nY = 400;
		dSpeed = (Math.random() * 25);
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	void show()
	{
		fill(myColor);
		ellipse(nX, nY, 10, 10);
	}
	void move()
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
	}
	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
void mousePressed()
{
	background(0);
	for(int i = 0; i < star.length; i++)
	{
		star[i].move();
		star[i].show();
	}
}