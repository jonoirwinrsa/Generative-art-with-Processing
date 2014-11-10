/*
Name:      Drawing blocks
Author:    Jonathan Irwin
Date:      10 November 2014

Source:    The idea for the sketch came from a project posted on behance - https://www.behance.net/gallery/20848693/Quadis

*/


// Init Number of rows and columns and the array that will hold the different sizes we want to see
int cols, rows;
color[] colors;
int[] blockSizes = new int[4];
int resolutionMultiplier = 1;


void setup() {
  
  size(1366*resolutionMultiplier,768*resolutionMultiplier); //my screen res times 2 just to get a nice high res
  
  //setup colours array to easily use and change only the colours I want
  colors=new color[6];
  colors[0]=color(228,245,177);
  colors[1]=color(123,176,168);
  colors[2]=color(99,82,116);
  colors[3]=color(81,43,82);
  colors[4]=color(228,245,177); 
  
  colors[5]=color(167,219,171); //background colour light green colour
  
  //create arrray of the sizes we want to use to make it easier to change
  blockSizes[0] = 40*resolutionMultiplier;
  blockSizes[1] = 20*resolutionMultiplier;
  blockSizes[2] = 10*resolutionMultiplier;
  blockSizes[3] = 5*resolutionMultiplier;
  
  background(colors[5]);
    
  // Initialize columns and rows, the number of these will differ depending on the size of the block
  // We will start off with multipling the pixels by an Integer and eventually end up at the single pixel level
  int blockSize = blockSizes[0];
  
  for (int h = 0; h < blockSizes.length; h ++) {
        // Initialize columns and rows, the number of these will differ depending on the size of the block
        // We will start off with multipling the pixels by an Integer and eventually end up at the single pixel level
        cols = width/blockSizes[h];
        rows = height/blockSizes[h];
    
    // Begin loop for the first and largest set of blocks
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++) {
        int r = int(random(100));
        if (r < 25){ //how often to actually draw the square, .25
        
        // Scaling up to draw a rectangle at (x,y)
        int x = i*blockSizes[h];
        int y = j*blockSizes[h];
  
        fill(colors[(int(random(0,colors.length)))]);
        stroke(70,int(random(10,30))); //randomly draw a light stroke
        // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
        rect(x+3,y+3,blockSizes[h],blockSizes[h]); //the 3 pixel shift is to equal out the spaces on the sides
        }
        else if(r<30){          //if we aren't drawing a coloured square, sometimes draw an empty/stroked square - why? because why not.      
        // Scaling up to draw a rectangle at (x,y)
        int x = i*blockSizes[h];
        int y = j*blockSizes[h];
  
        fill(0,0);
        stroke(70,25);
        //noStroke();
        // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
        rect(x+3,y+3,blockSizes[h],blockSizes[h]);
        } 
      }
    }  //end first loop of colours
  }
  
  save(hour()+""+minute()+""+second()+"__"+day()+""+month()+""+year()+".png"); //save the image as a PNG with a unique timestamped name
  
}

void draw() {
  }
