Client cubeClient;

float cubeX, cubeY, cubeA;
int cubePx, cubePy, cubeCt, cubeVl, cubePs;
boolean cubeDemo, cubeNewData;

void cubeConnect(String server, String url, int port)
{
  cubeClient = new Client(this, server, port);
  cubeClient.write("GET " + url + " HTTP/1.1\r\n");
  cubeClient.write("Host: " + server + "\r\n\r\n");
  
  cubeX = cubeY = cubeA = 0.0;
  cubePx = cubePy = cubeCt = cubeVl = cubePs = 0;
  cubeDemo = false;
}

void cubeDemoConnect()
{
  cubeX = cubeY = cubeA = 0.0;
  cubePx = cubePy = cubeCt = cubeVl = cubePs = 0;
  cubeDemo = true;
}

boolean cubeData()
{ 
  if(cubeDemo)
  {
    cubeX = (float)mouseX/width*45.0;
    cubeY = 30.0-(float)mouseY/height*30.0;
    return true;
  }

  // Reset push data
  cubePs = 0;
  
  while (cubeClient.available() > 0)
  {
    byte nl = 10;
    String myString = cubeClient.readStringUntil(nl);
    if(myString != null && !myString.isEmpty())
    {
      //print(myString);
      String[] list = split(myString, ",");
      if(list.length >= 8)
      {
        String[] list2;
        
        list2 = split(list[3], ":");
        if(list2.length == 2)
        {
          if(int(float(list2[1]))<0)
          {
            return false;
          }
        }
        
        list2 = split(list[0], ":");
        if(list2.length == 2)
        {
          cubeX = float(list2[1]);
        }
        
        list2 = split(list[1], ":");
        if(list2.length == 2)
        {
          cubeY = float(list2[1]);
        }
        
        list2 = split(list[2], ":");
        if(list2.length == 2)
        {
          cubeA = float(list2[1]);
        }
        
        list2 = split(list[3], ":");
        if(list2.length == 2)
        {
          cubePx = int(float(list2[1]));
        }
        
        list2 = split(list[4], ":");
        if(list2.length == 2)
        {
          cubePy = int(float(list2[1]));
        }
        
        list2 = split(list[5], ":");
        if(list2.length == 2)
        {
          cubeCt = int(float(list2[1]));
        }
        
        list2 = split(list[6], ":");
        if(list2.length == 2)
        {
          cubeVl = int(float(list2[1]));
        }
        list2 = split(list[7], ":");
        if(list2.length == 2)
        {
          String[] list3 = split(list2[1], "}");
          if(list3.length == 2)
          {
            cubePs = int(float(list3[0]));
          }
        }
        
        return true;
      }
    }
  }
  return false;
}

void drawCubeInfo()
{
  resetMatrix();
  fill(128);
  textSize(14);
  textAlign(LEFT);
  text("Px:"+cubePx+", Py:"+cubePy+", ct:"+cubeCt+", vl:"+cubeVl+", ps:"+cubePs+", x:"+cubeX+", y:"+cubeY+", a:"+cubeA, 10, height-30);
  if(cubeDemo)
  {
    text("Press a,z to change Px, s,x for Py and space for Push", 10, height-10);
  }
  
  // Reset push data
  cubePs = 0;
}

void keyPressed()
{
  if(cubeDemo)
  switch( key )
  {
    case 'a':
      cubePx++;
      break;
    case 'z':
      cubePx--;
      break;
    case 's':
      cubePy++;
      break;
    case 'x':
      cubePy--;
      break;
    case ' ':
      cubePs=1;
      break;
      
    default: break; 
  }
}
