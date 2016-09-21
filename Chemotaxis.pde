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
 background(#000d33);

 for(int i = 0; i < chou .length; i++)
 {
   chou[i] .walk();
   chou[i] .bias();
   chou[i] .show();
 }
 }
 class Bacteria    
 {     
 //lots of java!  
int myX, myY, step, yIfu;

Bacteria()
{
  myX = 150;
  myY = 150;
}

void walk()
{
  myX = myX + (int)(Math.random()*5)-2+step;
    if (myX >= 385)
    {
      myX = myX - (int)(Math.random()*5)-2+step;
    }
	else if(myX <= 15)
    {
      myX = myX + (int)(Math.random()*5)-2+step;
    }
    myY = myY + (int)(Math.random()*5)-2+yIfu;
    if (myY >= 385)
    {
      myY = myY - (int)(Math.random()*5)-2+yIfu;
    }
    else if (myY <= 15)
    {
      myY = myY + (int)(Math.random()*5)-2+yIfu;
    }
    else 
    {
      step =0;
      yIfu =0;
    }
}
void bias ()
{
 if (mousePressed)
 {
   if (myX < mouseX)
   {
     step = 1;
   }
   if (myX > mouseX)
   {
     step = -1;
   }
   if (myY < mouseY)
   {
      yIfu = 1; 
   }
   if (myY > mouseY)
   {
     yIfu = -1;
   }
 }
}
void show()
{
  noStroke();
  fill((int)(Math.random()*255)+100, (int)(Math.random()*255)+100, (int)(Math.random()*255)+100, 230);
  rect(myX, myY, 5, 5, -20);
  fill((int)(Math.random()*255)+50, (int)(Math.random()*255)+70, (int)(Math.random()*255)+90, 250);
  ellipse (myX-10, myY-25, 5, 5);
}
}    