ControlP5 cp5;
Slider slider1;
Knob knob1;

void setup_4()
{
  PFont pfont = createFont("Arial",20,false);
  ControlFont font = new ControlFont(pfont,241);
  
  cp5 = new ControlP5(this);
  
  slider1 = cp5.addSlider("slider")
             .setPosition(200,300)
             .setSize(75,200)
             .setRange(0,128)
             .setValue(0)
             .setColorCaptionLabel(128)
             .setColorValueLabel(128)
             .setDecimalPrecision(0) 
             ;
     
  slider1.getCaptionLabel().setFont(font).setSize(30);
  slider1.getValueLabel().setFont(font).setSize(30);
  
  knob1 = cp5.addKnob("knob")
             .setRange(0,128)
             .setValue(0)
             .setPosition(400,300)
             .setRadius(100)
             .setColorCaptionLabel(128)
             .setDecimalPrecision(0) 
             ;
               
  knob1.getCaptionLabel().setFont(font).setSize(30);
  knob1.getValueLabel().setFont(font).setSize(30);
  
  cp5.hide();
}

boolean draw_4()
{
  if (!(cubeCt == 32 || cubeCt == 15))
  {
    if (lastApp == 4)
    {
      cp5.hide();
    }
    
    return false;
  }
  
  cp5.show();
  
  background(255);

  if(cubeCt==15)
  {
    slider1.setValue(cubeVl);
  }
  else if(cubeCt==32)
  {
    knob1.setValue(cubeVl);
  }
  
  // Draw title
  fill(128);
  textSize(40);
  textAlign(CENTER);
  text("Demo 4", width/2, 60);
    
  return true;
}
