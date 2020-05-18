import processing.serial.*;
Serial myPort;  // Create object from Serial class
int j=0,i=0;     // Data received from the serial port
int state[]={0,0,0,0,0,0,0,0};
String[] list;
String val;
PImage img;
valve s1;
valve s2;
valve s3;
valve s4;
valve s5;
comp pump;
comp heater;
comp soapp;

void setup() {
  size(1280, 720);
  myPort = new Serial(this, "COM47", 9600);
  img = loadImage("Cup.jpg");
  s1 = new valve(68, 324);
  s2 = new valve(527, 313);
  s3 = new valve(458, 229);
  s4 = new valve(797, 213);
  s5 = new valve(165, 432);
  soapp = new comp(752, 59); 
  heater = new comp(439, 38); 
  pump = new comp(300, 276);
}

void draw() {
  image(img, 0, 0);
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readStringUntil('n');        // read it and store it in val  
    list = split(val, ' ');

    for(int i = 0; i < 8; i++ )
    {
   if(list[i].equals("0"))
   state[i]=0;
   if(list[i].equals("1"))
   state[i]=1;
    }
  }
  
      s1.display(state[0]);
      s2.display(state[1]);
      s3.display(state[2]);
      s4.display(state[3]);
      s5.display(state[4]);
      heater.display(state[5]);
      soapp.display(state[6]);
      pump.display(state[7]);
    
}
