import processing.net.*;
import processing.video.*;
import controlP5.*;


int lastIcon = -1;
int icon0,icon1,icon2,icon3, icon4, icon;
ControlP5 cp5;

//// Sliders Speed & Volume
Slider slider1;
Slider slider2;
Slider slider3;
Slider slider4;

//// Knobs
Knob knob1;
Knob knob2;
Knob knob3;
Knob knob4;

//// Pads sounds
Toggle button3;
Toggle button4;
Toggle button5;
Toggle button6;

//// Circles frequency
float power1=0;
float power2=0;
float threshold = 0.35;// vary this until the square appears on the beats
int wait = 0;
color [] colors = new color[7]; 

//// Desktops
int tvx, tvy;
int animx, animy;
int deck1x, deck1y;
int deck2x, deck2y;
boolean deck1Playing = false;
boolean deck2Playing = false;
float rotateDeck1 = 0;
float rotateDeck2 = 0;
float currentFrame = 0;
int margin = width/40;
PImage [] images;
PImage [] recordPlayer;
PImage TV;
PImage playing;

//// Sounds
Maxim maxim;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;
AudioPlayer player4;
AudioPlayer player5;
AudioPlayer player6;

float speedAdjust1=1.0;
float speedAdjust2=1.0;
float vol1=0.25;
float vol2=0.25;
float vol3=1;
float vol4=1;
float vol5=1;
float vol6=1;

int flag1=1;
int flag2=1;
int flag3=1;
int flag4=1;
int flag5=1;
int flag6=1;
float bal2=1.;
float del2=0.1;
float freq= 500;

void setup()
{
  size(1275, 1024);
  
  cubeConnect("192.168.1.1", "/?action=stream", 80);
  //size(768, 1024);
  //size(displayWidth, displayHeight);
//  
//   PFont pfont = createFont("Arial",20,false);
//  ControlFont font = new ControlFont(pfont,241);
  
  cp5 = new ControlP5(this);
  
   slider1 = cp5.addSlider("volumenA")
             .setPosition(500,410)
             .setSize(20,150)
             .setRange(0,128)
             .setValue(30)
             .setDecimalPrecision(0) 
             ;
     
 // slider1.getCaptionLabel().setFont(font).setSize(10);
 //cp5.getController("volumen").getValueLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);
  
    slider2 = cp5.addSlider("volumenB")
             .setPosition(755,410)
             .setSize(20,150)
             .setRange(0,128)
             .setValue(30)

             .setDecimalPrecision(0) 
             ;
     
 // slider2.getCaptionLabel().setFont(font).setSize(30);
  //slider2.getValueLabel().setFont(font).setSize(10);
  
      slider3 = cp5.addSlider("speedA")
             .setPosition(490,590)
             .setSize(75,20)
             .setRange(0,128)
             .setValue(60)

             .setDecimalPrecision(0) 
             ;
      slider4 = cp5.addSlider("speedB")
             .setPosition(670,590)
             .setSize(75,20)
             .setRange(0,128)
             .setValue(60)

             .setDecimalPrecision(0) 
             ;
   //  cp5.getController("speed").getValueLabel().align(ControlP5.BOTTOM, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0);  
 // slider3.getCaptionLabel().setFont(font).setSize(30);
  //slider3.getValueLabel().setFont(font).setSize(10);
  
  knob1 = cp5.addKnob("vol1")
             .setRange(0,128)
             .setValue(0)
             .setPosition(490,280)
             .setRadius(20)
             .setDecimalPrecision(0) 
             ;
               knob2 = cp5.addKnob("vol2")
             .setRange(0,128)
             .setValue(0)
             .setPosition(490,340)
             .setRadius(20)
             .setDecimalPrecision(0) 
             ;
               knob3 = cp5.addKnob("vol3")
             .setRange(0,128)
             .setValue(0)
             .setPosition(740,280)
             .setRadius(20)
             .setDecimalPrecision(0) 
             ;
               knob4 = cp5.addKnob("vol4")
             .setRange(0,128)
             .setValue(0)
             .setPosition(740,340)
             .setRadius(20)
             .setDecimalPrecision(0) 
             ;

  

  //button1= cp5.addToggle("play1",false,220,565,40,30);
  //button2= cp5.addToggle("play2",false,835,565,40,30);
  button3= cp5.addToggle("pad1",false,530,195,50,20);
  button4= cp5.addToggle("pad2",false,590,195,50,20);
  button5= cp5.addToggle("pad3",false,650,195,50,20);
  button6= cp5.addToggle("pad4",false,710,195,50,20);
  
  
  
 cp5.show();
    imageMode(CENTER);
  images = loadImages("Animation_data/movie", ".jpg", 684);
  recordPlayer = loadImages("black-record_", ".png", 36);
  TV = loadImage("mixer.png");
  maxim = new Maxim(this);
    player1 = maxim.loadFile("loop1.wav");
    player1.setLooping(true);
    player1.setAnalysing(true);
    player2 = maxim.loadFile("loop2.wav");
    player2.setLooping(true);
    player2.setAnalysing(true);
    player3 = maxim.loadFile("pad1.wav");
    player3.setLooping(true);
    player4 = maxim.loadFile("pad2.wav");
    player4.setLooping(true);
    player5 = maxim.loadFile("pad3.wav");
    player5.setLooping(true);
    //playing = loadImage("pulsePlay.png");
    player6 = maxim.loadFile("pad4.wav");
    player6.setLooping(true);
    
  
 
 

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


 
  imageMode(CENTER);
  image(images[(int)currentFrame], (width/2)-2, (images[0].height/2)-19, images[0].width/2, images[0].height/2);
 
  image(TV, width/2, TV.height/2+margin, TV.width, TV.height);
  deck1x = (width/2)-recordPlayer[0].width/2-(margin*10);
  deck1y = TV.height+recordPlayer[0].height/2+margin;
  image(recordPlayer[(int) rotateDeck1], 320, 410, recordPlayer[0].width, recordPlayer[0].height);
  deck2x = (width/2)+recordPlayer[0].width/2+(margin*10);
  deck2y = TV.height+recordPlayer[0].height/2+margin;
  image(recordPlayer[(int) rotateDeck2], 950, 410, recordPlayer[0].width, recordPlayer[0].height);

  if (deck1Playing || deck2Playing) {
    
    player1.speed(speedAdjust1);
    player2.speed(speedAdjust2);
    player2.setDelayTime(del2); 
   player1.ramp(bal2,1000); 
    player2.setFilter(freq, 0.3);
    currentFrame= currentFrame+1*speedAdjust2;
    fill(255);
   
    power1 = player1.getAveragePower(); 
    ellipse(640,310,power1*400,power1*400);
     fill(125);
       power2 = player2.getAveragePower(); 
    ellipse(640,310,power2*300,power2*300);

  }

  if (currentFrame >= images.length) {

    currentFrame = 0;
  }

  if (deck1Playing) {

    rotateDeck1 += 1*speedAdjust1;
    // image(playing, 300, 800);
    if (rotateDeck1 >= recordPlayer.length) {

      rotateDeck1 = 0;
    }
  }

  if (deck2Playing) {

    rotateDeck2 += 1*speedAdjust2;

    if (rotateDeck2 >= recordPlayer.length) {

      rotateDeck2 = 0;
    }
  }
  
  ////////Play/Stop loop1
   if (deck1Playing) {
    
    player1.play();
    //image(playing, 220, 565);
    
  } 
  else {

    player1.stop();
    
  }

  ////////Play/Stop loop2
    if (deck2Playing) {
    player2.play();
   // image(playing, 220, 565);
  } 
  else {

    player2.stop();
  }
  
  ////// Play/stop loop1 
 

    if(cubeCt==46)
      { 
    if (cubeVl==127){
 if (flag1==1){
     deck1Playing = true;
     flag1=0;
     }
    }
   if (cubeVl==0){
     
     if (flag1==0){
     deck1Playing = false;
     flag1=1;
     } 
      }
      }

  ////// Play/stop loop2

   if(cubeCt==47)
  { 
    if (cubeVl==127){
     
     if (flag2==1){
     deck2Playing = true;
     flag2=0;
     }
    }
   if (cubeVl==0){
     
     if (flag2==0){
     deck2Playing = false;
     flag2=1;
     } 
     
     
    }
  }
    

 /////// Sliders volume          
    if(cubeCt==10)
  {
    slider1.setValue(cubeVl);
   vol1=map(cubeVl,0,128,0,1);
      player1.volume(vol1);
  }
    if(cubeCt==11)
  {
    slider2.setValue(cubeVl);
   vol2=map(cubeVl,0,128,0,1);
      player2.volume(vol2);
  }
  
 /////// Sliders speed
  if(cubeCt==13)
  {
    slider3.setValue(cubeVl);
   speedAdjust1=map(cubeVl,0,128,0,2);
  
  }
  
    if(cubeCt==12)
  {
    slider4.setValue(cubeVl);
   speedAdjust2=map(cubeVl,0,128,0,2);
  
  }

////// Pads musica
     if(cubeCt == 41)

    {
         if (cubeVl==127){
     
     if (flag3==1){
     player3.play();
      button3.setValue(true);
     flag3=0;
     }
    }
   if (cubeVl==0){
     
     if (flag3==0){
    player3.stop();
    button3.setValue(false);
     flag3=1;
     } 
      
    }
    
    }
     if(cubeCt == 42)
  
     {
         if (cubeVl==127){
     
     if (flag4==1){
     player4.play();
      button4.setValue(true);
     flag4=0;
     }
    }
   if (cubeVl==0){
     
     if (flag4==0){
    player4.stop();
    button4.setValue(false);
     flag4=1;
     } 
      
    }
    
    }
     if(cubeCt == 43)
  
     {
         if (cubeVl==127){
     
     if (flag5==1){
     player5.play();
      button5.setValue(true);
     flag5=0;
     }
    }
   if (cubeVl==0){
     
     if (flag5==0){
    player5.stop();
    button5.setValue(false);
     flag5=1;
     } 
      
    }
    
    }
    
    if(cubeCt == 44)
  
    {
         if (cubeVl==127){
     
     if (flag6==1){
     player6.play();
      button6.setValue(true);
     flag6=0;
    
     }
    }
   if (cubeVl==0){
     
     if (flag6==0){
    player6.stop();
    button6.setValue(false);
     flag6=1;
     } 
      
    }
    
    }
    
    
  
    if(cubeCt ==4){
//      knob1.setValue(cubeVl);
  
    
//     player1.setFilter(freq,100);
    knob1.setValue(cubeVl);
    vol3=map(cubeVl,0,128,0,1);
      player3.volume(vol3);
  //  float bal1 = map(cubeVl, 0,128,0,1);
   // player1.ramp(bal1,1000);

    }
       if(cubeCt ==5){
       
   //float bal2 = map(cubeVl, 0,128,0,1);
   // player2.ramp(bal2,1000);
//
    knob4.setValue(cubeVl);
    vol6=map(cubeVl,0,128,0,1);
      player6.volume(vol6);

    }
    
        if(cubeCt ==2){
  
       knob3.setValue(cubeVl);
       vol5=map(cubeVl,0,128,0,1);
      player5.volume(vol5);
       // bal2 = map(cubeVl, 0,128,0,1);
    //player2.ramp(bal2,1000);
    //float del2 = map(cubeVl, 0,128,0.0001, 0.5);
   // player2.setDelayTime(del2); 
  // freq = map(cubeVl,0,128, 50, 50000 );
  // player1.setFilter(freq, 0.3);
    }
          if(cubeCt ==3){
       //knob4.setValue(cubeVl);
       knob2.setValue(cubeVl);
       vol4=map(cubeVl,0,128,0,1);
      player4.volume(vol4);
    //del2 = map(cubeVl, 0,128,0.0001, 0.5);
    //player2.setDelayTime(del2); 

    }
   
    
    
    drawCubeInfo();
}

