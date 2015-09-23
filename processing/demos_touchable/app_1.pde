PImage img0, img1, img;

void setup_1()
{
  img0 = loadImage("data/icon0.png");
  img1 = loadImage("data/icon1.png");
}

boolean draw_1()
{
  if(cubeCt == 2)
  {
    img = img0;
  }
  else if(cubeCt == 3)
  {
    img = img1;
  }
  else
  {
    return false;
  }
  
  // Draw title
  resetMatrix();
  fill(128);
  textSize(40);
  textAlign(CENTER);
  text("Demo 1", width/2, 60);
  
  // Draw icon
  translate((int)(cubeX/45.0*width), height-(int)(cubeY/30.0*height));
  rotate((30.0-cubeA)*3.1415926/180.0);
  //scale(1.0-0.5*cubeVl/128.0);
  if(cubePs == 1)
  {
    scale(2.0);
  }
  translate(-img.width/2, -img.height/2);
  image(img, 0, 0);
  
  return true;
}
