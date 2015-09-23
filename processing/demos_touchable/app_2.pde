Movie mov;
int movMoved;
boolean movPaused;
float movVolume;
float movZoom;
float movTime;
float lastTime;
float movX;
float movY;
boolean movFirst;

void setup_2()
{
  mov = new Movie(this, "example.mp4");
  movVolume = 0.10; // 10%
  movPaused = true;
  movZoom = 1.0;
  movTime = 35.0; // start at 35 secs
  movMoved = millis();
  movX = 0.0;
  movY = 0.0;
  movFirst = true;
  lastTime = movTime;
}

boolean draw_2()
{
  if (!(cubeCt == 4 || cubeCt == 34  || cubeCt == 14))
  {
    // Pause the movie on app change
    if (lastApp == 2 && !movPaused)
    {
      mov.pause();
      movPaused = true;
    }
    return false;
  }
  
  if (mov.available())
  {
    mov.read();
  }
  
  // (Un)Mute music on push
  if (cubePs == 1)
  {
    movVolume = - movVolume;
    mov.volume(movVolume);
  }

  // If paused, replay after 500 ms
  if (movPaused || millis() - movMoved > 500 || movFirst)
  {
    mov.play();
    
    if(movTime > 0.0)
    {
      mov.jump(movTime);
      movTime = 0.0;
    }
    
    mov.volume(movVolume);
    movPaused = false;
  }

  background(0);

  if(cubeCt == 4)
  {
    movX = -(int)((22.5-cubeX)/45.0*width);
    movY = (int)((15.0-cubeY)/30.0*height);
  }
  
  if(cubeCt == 34)
  {
    movZoom = 0.75 + 1.25 * cubeVl / 128.0;
  }
  
  if(cubeCt == 14)
  {
    movMoveTo(mov.duration() * map(cubeVl, 0.0, 128.0, 0, 1));
  }
  
  // Display video
  translate(width/2-movZoom*mov.width/2, height/2-movZoom*mov.height/2);
  scale(movZoom);
  if (movZoom>1.0)
  {
    image(mov, movX*movZoom, movY*movZoom);
  }
  else
  {
    image(mov, movX, movY);
  }
  resetMatrix();
  
  // Draw theater
  stroke(64);
  fill(64);
  rect(0,0,width, height*0.1);
  rect(0,height*0.9,width, height);
  stroke(255);
  
  // Draw time line
  float md = mov.duration();
  float mt = mov.time();
  strokeWeight(20.0);
  stroke(32);
  line(width*0.1, height*0.9, width*0.9, height*0.9);
  stroke(255, 96, 96);
  line(width*0.1, height*0.9, width*0.1+width*0.8*mt/md, height*0.9);
  strokeWeight(16.0);
  fill(255);
  stroke(255, 80, 80);
  ellipse(width*0.1+width*0.8*mt/md, height*0.9, 6, 6);
  strokeWeight(1.0);
  
  // Draw theather
  stroke(64);
  fill(64);
  rect(0,0,width*0.1, height);
  rect(width*0.9,0,width, height);
  stroke(255);
  
  // Draw title
  fill(128);
  textSize(40);
  textAlign(CENTER);
  text("Demo 2", width/2, 60);
    
  return true;
}

void movMoveTo(float x)
{
  // Do not move under small displacements
  if(abs(x - lastTime) < 0.05 * mov.duration())
  {
    return;
  }

  movMoved = millis();
  
  // Store last position
  movTime = x;
  lastTime = x;
}

void mouseMoved_2()
{
    movMoveTo(mov.duration() * map(mouseX, width*0.1, width*0.9, 0, 1));
}

