import processing.net.*;
import processing.video.*;
import ddf.minim.*;
import controlP5.*;

int currentApp, lastApp;

void setup()
{
  size(1024, 720);
  //size(displayWidth, displayHeight);
  
  cubeConnect("192.168.1.1", "/?action=stream", 80);
  
  initMinim();
  
  setup_1();
  setup_2();
  setup_3();
  setup_4();
  setup_5();
}

boolean sketchFullScreen()
{
  return false;//true;
}

void draw()
{
  cubeNewData = cubeData();
  
  background(255);

  drawCubeInfo();
  
  if(draw_1())
  {
    currentApp = 1;
  }
  if(draw_2())
  {
    currentApp = 2;
  }
  if(draw_3())
  {
    currentApp = 3;
  }
  if(draw_4())
  {
    currentApp = 4;
  }
  if(draw_5())
  {
    currentApp = 5;
  }
  
  lastApp = currentApp;
}

void mouseMoved()
{
  if(cubeDemo)
  {
    if(currentApp == 2)
    {
      mouseMoved_2();
    }
  }
}
