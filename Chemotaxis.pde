Bacteria chou = new Bacteria();
 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(400,400);  
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	chou.walk();
 	chou.show();

 }  
 class Bacteria    
 {     
 	//lots of java!  
 	 int myX, myY;
 	 Bacteria()
 	 {
 	 	myX = 200;
 	 	myY = 200;
 	 }

 	 void walk()
 	 {
 	 	myX = myX + (int)(Math.random()*10)-5;
 	 	myY = myY + (int)(Math.random()*10)-5;
 	 }

 	 void show()
 	 {
 	 	fill(#ffccff);
 	 	rect(myX, myY, 15, 15, -20);
 	 }
 }    