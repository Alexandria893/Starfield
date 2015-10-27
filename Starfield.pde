Particle[] p;

void setup()
{
	
	size(500,500);
	p = new Particle[200];
		for (int i = 0; i<100; i++)
		{

			p[i] = new NormalParticle();

		}

	for (int i = 100; i < p.length; i++)
	{
	
		p[i] = new OddballParticle();
	
	}
} 

void draw()
{

	for (int i = 0; i<p.length; i++)
	{

		p[i].move();
		p[i].show();
		
	}

}


interface Particle
{

	public void show();
	public void move();

}


class NormalParticle implements Particle
{

	 double myX;
	 double myY;
	 int c; //color
	 double s; //speed
	 double d; //direction
	
	 NormalParticle()
	{

		myX = 250;
		myY = 250; 
		c = 127;
		s = Math.random()*11 + 1;
		d = Math.random()*2*Math.PI;

	} //void mean function doesnt return anyting

		 void move()
		{
			// += means add and to the variable
			myX += Math.cos(d)*s;
			myY += Math.sin(d)*s;
		
		}

		 void show()
		 {

				fill(255,0,0);
				ellipse((float)myX,(float)myY,50,50);

		}

	
}

class OddballParticle implements Particle//uses an interface
{
	double myX;
	double myY;
	int c; //color
	double s; //speed
	double d; //direction
	
	OddballParticle()
	{

		myX = 250;
		myY = 250; 
		c = 127;
		s = Math.random()*4 + 1;
		d = Math.random()*2*Math.PI;
	
	}
		public void move()
		{
			// += means add and to the variable
			myX += Math.cos(d)*s;
			myY += Math.sin(d)*s;
		
		}

		public  void show()
		{

			fill(0,0,255);
			ellipse((float)myX,(float)myY,50,50);

		}

}

class JumboParticle //uses inheritance
{
	//your code here
}

