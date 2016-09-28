NormalParticle [] star; //your code here
void setup()
{
	star = new NormalParticle[100];
	for(int i = 0; i < star.length; i++)
	{
		star[i] = new NormalParticle();
	}
	size(400, 400);//your code here
}
void draw()
{
	background(255);
	for(int i = 0; i < star.length; i++)
	{
		star[i].move();
		star[i].show();
	} //your code here
}
class NormalParticle
{
	double dTheta, dSpeed;
	int nX, nY;
	NormalParticle()
	{
		dTheta = (Math.random() * (2*Math.PI))
	}
	void show()
	{

	}
	void move()
	{

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

