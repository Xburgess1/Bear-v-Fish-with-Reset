//holds the info for the fish and bear image
PImage bear;
PImage fish;

//holds the value for the fish and bears y location
int fishY=100;
int bearY=100;

//booloean variable for pausing the game when a player wins
boolean a = false;

//boolean variable for stopping animals
boolean showMessage=false;

void setup()
{
  //sets screen to fullsize
  fullScreen();
  
  //loads the fish and bear
  fish = loadImage("fish.png");
  bear = loadImage("bear.png");
  
}

void draw()
{
  
  //when a player wins the game stops
  if (a)
  {
    //noLoop();
  }
  
  //sets the background to white
  background(255);
  
  //sets the image mode to center
  imageMode(CENTER);
  
  //sets where the fish and bear's starting location
  image(fish,980,fishY,200,180);
  image(bear,1800,bearY,200,180);

  fill(0);
  
  //text appears when fish wins
  if (fishY>=1500)
  {
    textSize(100);
    text("The fish got away.",1000,height/2);
    a = true;
    showMessage=true;
  }
  
  //text appears when bear wins
  if (bearY>=1500)
  {
    textSize(100);
    text("The bear ate the fish.",900,height/2);
    a = true;
    showMessage=true;
  }
  
  //reset button
  if (a)
  {
    rectMode(CENTER);
    rect(width/2,1200,400,100);
    fill(255);
    text("Reset",1200,1240);
  }

}

void keyPressed()
{
  //when the a key is pressed the fish moves down
  if (key == 'a' && showMessage == false)
  {
    fishY = fishY+10;
  }
  
  //when the l key is pressed the bear moves down
  if (key == 'l' && showMessage == false)
  {
    bearY = bearY+10;
  }
}

void mousePressed()
{
  if(a == true && mouseX > 1100 && mouseX < 1600 && mouseY > 1150 && mouseY < 1250)
  {
    a = false;
    fishY = 100;
    bearY = 100;
    showMessage=false;
  }
}
