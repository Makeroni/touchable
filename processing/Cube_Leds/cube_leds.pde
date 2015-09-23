import processing.net.*; 

Client cubeClient;
int iter = 0;
byte rgb[];
PImage img;


void setup()
{
  frameRate(15);
  size(80, 80);
  rgb = new byte[3+8*8*3+3];
  cubeClient = new Client(this, "192.168.1.1", 3004);
  rgb[  0] = 'S';
  rgb[  1] = 'T';
  rgb[  2] = 'A';
  rgb[195] = 'E';
  rgb[196] = 'N';
  rgb[197] = 'D';
  img = loadImage("images/img1.gif");
}

void draw()
{
  background(255);
  noStroke();
  fill(255,0,0);
  //ellipse(40, 40, iter%80, iter%80);
  image(img, 0, 0);
  loadPixels();
  int k = 3;
  for(int j=0; j<8; j++)
  {
    for(int i=0; i<8; i++)
    {
      color col = pixels[i*10+4+(j*10+4)*width];
      rgb[k]=(byte)int(red(col)); k++;
      rgb[k]=(byte)int(green(col)); k++;
      rgb[k]=(byte)int(blue(col)); k++;
    }
  }
  
  cubeClient.write(rgb);
  
  iter+=5;
}

