// Alsa only supports loading 32 simultaneos audio samples.
// Minim object does not provide a sample dispose method so
// brokens after loading 32 audio samples.
// It is possible to close and re-open the same Minim object
// but that stops the current playing samples.
// My solution is to use 8 minim objects, closing and
// re-opening them in order so last samples are kept playing.

Minim minim1, minim2, minim3, minim4;
Minim minim5, minim6, minim7, minim8;
int minimSample = 0;

void initMinim()
{
  minim1 = new Minim(this);
  minim2 = new Minim(this);
  minim3 = new Minim(this);
  minim4 = new Minim(this);
  minim5 = new Minim(this);
  minim6 = new Minim(this);
  minim7 = new Minim(this);
  minim8 = new Minim(this);
}

void playSample(String audio)
{
  if(minimSample % 8 == 0)
  {
    minim1.stop();    
    minim1 = new Minim(this);
    AudioSample chunk;
    chunk = minim1.loadSample(audio);
    chunk.trigger();
  }
  else if(minimSample % 8 == 1)
  {
    minim2.stop();    
    minim2 = new Minim(this);
    AudioSample chunk;
    chunk = minim2.loadSample(audio);
    chunk.trigger();
  }
  else if(minimSample % 8 == 2)
  {
    minim3.stop();    
    minim3 = new Minim(this);
    AudioSample chunk;
    chunk = minim3.loadSample(audio);
    chunk.trigger();
  }
  else if(minimSample % 8 == 3)
  {
    minim4.stop();    
    minim4 = new Minim(this);
    AudioSample chunk;
    chunk = minim4.loadSample(audio);
    chunk.trigger();
  }
  else if(minimSample % 8 == 4)
  {
    minim5.stop();    
    minim5 = new Minim(this);
    AudioSample chunk;
    chunk = minim5.loadSample(audio);
    chunk.trigger();
  }
  else if(minimSample % 8 == 5)
  {
    minim6.stop();    
    minim6 = new Minim(this);
    AudioSample chunk;
    chunk = minim6.loadSample(audio);
    chunk.trigger();
  }
  else if(minimSample % 8 == 6)
  {
    minim7.stop();    
    minim7 = new Minim(this);
    AudioSample chunk;
    chunk = minim7.loadSample(audio);
    chunk.trigger();
  }
  else
  {
    minim8.stop();    
    minim8 = new Minim(this);
    AudioSample chunk;
    chunk = minim8.loadSample(audio);
    chunk.trigger();
  }
  minimSample++;
}
