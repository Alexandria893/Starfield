Particle[] nP;
Particle[] odd;

void setup()
{
	
	size(500,500);
	nP = new NormalParticle[100];
		for (int i = 0; i<nP.length; i++)
		
		{

			nP[i] = new NormalParticle();

		}

	odd = new OddballParticle[300];
	for (int i = 0; i < odd.length; i++)
	{
	
		odd[i] = new OddballParticle();
	
	}
} 

void draw()
{

	for (int i = 0; i<odd.length; i++)
	{

		nP[i].move();
		nP[i].show();
		odd[i].move();
		odd[i].show();

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
		void move()
		
		{
			// += means add and to the variable
			myX += Math.cos(d)*s;
			myY += Math.sin(d)*s;
		
		}

		 void show()
		{

			fill(0,0,255);
			ellipse((float)myX,(float)myY,50,50);

		}

}

class JumboParticle //uses inheritance
{
	//your code here
}

