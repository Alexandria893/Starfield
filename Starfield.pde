NormalParticle[] nP;

void setup()
{
	
	size(500,500);
	nP = new NormalParticle[200];
		for (int i = 0; i<nP.length; i++)
		{

			nP[i] = new NormalParticle();

		}

}
void draw()
{

	for (int i = 0; i<nP.length; i++)
	{

		nP[i].move();
		nP[i].show();

	}	

}


interface Particle
{
	//your code here
}


class NormalParticle
{

	private double myX;
	private double myY;
	private int c; //color
	private double a; //angle
	private double s; //speed
	
	NormalParticle()
	{


		public void move()
		{

			cos(a)*s+myX;
			sin(a)*s+myY;
		
		}

		public void show()
		{

			fill(255,0,0);
			ellipse(50,50,myX,myY);


		}

	}
}

class OddballParticle //uses an interface
{
	//your code here
}

class JumboParticle //uses inheritance
{
	//your code here
}

