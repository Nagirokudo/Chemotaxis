
Bacteria [] chou;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400,400);
 	chou = new Bacteria [8];
 	for(int i = 0; i < chou .length; i++)
 	{
 		chou[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);

 	for(int i = 0; i < chou .length; i++)
 	{
 		chou[i] .walk();
 		chou[i] .show();
 	}

 }  
 class Bacteria    
 {     
 	//lots of java!  
	int myX, myY;

	Bacteria()
	{
		myX = 150;
		myY = 150;
	}

	void walk()
	{
		myX = myX + (int)(Math.random()*5)-2;
	    if (myX >= 390)
	    {
	      myX = myX - (int)(Math.random()*5)-2;
	    }
	    if(myX <= 10)
	    {
	      myX = myX + (int)(Math.random()*5)-2;
	    }
	    myY = myY + (int)(Math.random()*5)-2;
	    if (myY >= 390)
	    {
	      myY = myY - (int)(Math.random()*5)-2;
	    }
	    if (myY <= 10)
	    {
	      myY = myY + (int)(Math.random()*5)-2;
	    }
	}

	void show()
	{
		noStroke();
		fill((int)(Math.random()*255)+100, (int)(Math.random()*255)+100, (int)(Math.random()*255)+100, 230);
		rect(myX, myY, 5, 5, -20);
	}
}    