import processing.net.*; 

PImage img0, img1, img2, img;
Maxim maxim;
AudioPlayer player1;

void setup()
{
  size(800, 600);
  //size(displayWidth, displayHeight);
  
  cubeConnect("192.168.1.1", "/?action=stream", 80);
  //cubeDemoConnect();
  
  img0 = loadImage("icon0.png");
  img1 = loadImage("icon1.png");
  img2 = loadImage("icon2.png");
  
    maxim = new Maxim(this);
    player1 = maxim.loadFile("beat1.wav");
}

boolean sketchFullScreen()
{
  return false;
}

void draw()
{
  cubeNewData = cubeData();
  
  if(cubePy == 0)
  {
    img = img0;
  } 
  else if(cubePy == 47)
  {
    img = img1;
     
  } 
  else
  {
    img = img2;
  }
  
  background(255);
  
        if(cubePs==1)
  {
    
    
  scale(1.5);
   // player1.play();
   //  player1.setLooping(true);
    
  //  delay(3000);
  }  
  
  
  
  translate((int)(cubeX/45.0*width), height-(int)(cubeY/30.0*height));
  rotate((30.0-cubeA)*3.1415926/180.0);

  translate(-img.width/2, -img.height/2);
  image(img, 0, 0);
  
  drawCubeInfo();
}

