PImage icon0, icon1,icon2,icon3, icon, icon4, icon5,icon6,icon7, icon8, icon9;
int lastSound = 0;
int lastIcon = -1;

void setup_5()
{
  icon0 = loadImage("data/icon0.png");
  icon1 = loadImage("data/icon1.png");
  icon2 = loadImage("data/icon0.png");
  icon3 = loadImage("data/icon1.png");
  icon4 = loadImage("data/icon0.png");
  icon5 = loadImage("data/icon1.png");
  icon6 = loadImage("data/icon0.png");
  icon7 = loadImage("data/icon1.png");
  icon8 = loadImage("data/icon0.png");
  icon9 = loadImage("data/icon1.png");
}

boolean draw_5()
{
  if (!(cubeCt == 31 || cubeCt == 30|| cubeCt == 33|| cubeCt == 35 ||cubeCt == 27 || cubeCt == 28|| cubeCt == 29|| cubeCt == 24 || cubeCt == 25|| cubeCt == 26))
  {
    return false;
  }
  
  if(cubeCt == 31)
  {
    icon = icon0;
    if(lastIcon != 0) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/perrito.mp3");
      lastSound = millis();
      lastIcon = 0;
    }
  }
   if(cubeCt == 30)
  {
    icon = icon1;
    if(lastIcon != 1) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/pajaros.mp3");
      lastSound = millis();
      lastIcon = 1;
    }
  }
  
    if(cubeCt == 33)
  {
    icon = icon2;
    if(lastIcon != 2) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/vaca.mp3");
      lastSound = millis();
      lastIcon = 2;
    }
  }
     if(cubeCt == 35)
  {
    icon = icon3;
    if(lastIcon != 3) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/gato.mp3");
      lastSound = millis();
      lastIcon = 3;
    }
  }
   if(cubeCt == 27)
  {
    icon = icon4;
    if(lastIcon != 4) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/touchable.mp3");
      lastSound = millis();
      lastIcon = 4;
    }
  }
   if(cubeCt == 28)
  {
    icon = icon5;
    if(lastIcon != 5) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/es.mp3");
      lastSound = millis();
      lastIcon = 5;
    }
  }
  
    if(cubeCt == 29)
  {
    icon = icon6;
    if(lastIcon != 6) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/lomejor.mp3");
      lastSound = millis();
      lastIcon = 6;
    }
  }
     if(cubeCt == 24)
  {
    icon = icon7;
    if(lastIcon != 7) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/deyuzz.mp3");
      lastSound = millis();
      lastIcon = 7;
    }
  }
     if(cubeCt == 25)
  {
    icon = icon8;
    if(lastIcon != 8) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/danos.mp3");
      lastSound = millis();
      lastIcon = 8;
    }
  }
     if(cubeCt == 26)
  {
    icon = icon9;
    if(lastIcon != 9) // && millis()-lastSound>2000) // Min 2 secs between samples
    {
      playSample("data/yuzzos.mp3");
      lastSound = millis();
      lastIcon = 9;
    }
  } 

  translate((int)(0.5*width), (int)(0.5*height));
  if(cubePs == 1)
  {
    scale(2.0);
  }
  translate(-icon.width/2, -icon.height/2);
  image(icon, 0, 0);
  
  // Draw title
  resetMatrix();
  fill(128);
  textSize(40);
  textAlign(CENTER);
  text("Demo 5", width/2, 60);
    
  return true;
}
