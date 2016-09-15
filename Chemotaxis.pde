
Bacteria chou;
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400,400);  
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	chou = new Bacteria [5];
 	for(int i = 0; i < chou.lenght; chou++)
 	{
 		chou = new Bacteria (i);
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
		myY = myY + (int)(Math.random()*5)-2;
	}

	void show()
	{
		fill(#ffccff);
		rect(myX, myY, 5, 5, -20);
	}
}    