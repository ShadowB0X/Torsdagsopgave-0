/* 
The code in this sketch will not compile, as it referes to varables which have not yet been declared 
Please complete task 5 to get this to compile.
*/
int circleSize;
int numberOfCircles;

int red;
int green;
int blue;


//int red = 30;
//int green = 130;
//int blue = 255;

 int counter = 0;
int rowCounter = 0;

void setup(){
   size(400,400);
  
  red = 255;
  green = 255;
  blue = 255;
  
  
  numberOfCircles = 30;
  circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  
}
void draw(){
  

  int x = circleSize*counter;
  int y = circleSize*rowCounter;
 

  fill(red,green,blue);
   
   ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
  
  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0
 
  //Add the code for 6.c here
  
 red = frameCount % numberOfCircles == 0 ? red-20: red;
 green = frameCount % numberOfCircles == 0 ? green-15: green;
 blue = frameCount % numberOfCircles == 0 ? blue-10: blue;
  
  
}
