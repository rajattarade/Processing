Button imp_b;  // the button
Button save;  // the button
Button add;  // the button
Button remove;  // the button

int w_origX = 0;
int w_origY = 0;
int w_endX = 0;
int w_endY = 0;

PImage img;
boolean pathavail = false;
char filetype;       // number of times the button is clicked
String a;

void setup() {
  size (700, 550);
  smooth();
  
  // create the button object
  imp_b = new Button("Import", 20, 20, 100, 50);
  save = new Button("Save", 150, 20, 100, 50);
  add = new Button("Add", 440, 20, 100, 50);
  remove = new Button("Remove", 570, 20, 100, 50);
}

void draw() {
  // draw a square if the mouse curser is over the button
  if (imp_b.MouseIsOver()) {
    rect(200, 20, 50, 50);
  }
  else {
    // hide the square if the mouse cursor is not over the button
    background(0);
  }
  // draw the button in the window
  imp_b.Draw();
  save.Draw();
  add.Draw();
  remove.Draw(); 
}

// mouse button clicked
void mousePressed()
{
  if (imp_b.MouseIsOver()) {
       selectInput("Select a file to process:", "fileSelected");
       filetype = 'I';
  }
  if (save.MouseIsOver()) {
       selectInput("Select a file to process:", "fileSelected");
       filetype = 'S';
  }
}

// the Button class
class Button {
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button
  
  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void Draw() {
    fill(218);
    stroke(141);
    rect(x, y, w, h, 10);
    rect(20, 100, 400, 400);
    rect(440, 100, 240, 400);
    
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
    if(filetype == 'I' && pathavail == true)
    {
     img = loadImage(a);
     image(img, 20, 100, 100, 100); 
    }
    if(filetype == 'S' && pathavail == true)
    {
     img = loadImage(a);
     image(img,50, 50, 500, 250); 
    }
  }
  
  boolean MouseIsOver() {
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h)) {
      return true;
    }
    return false;
  }
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    a = selection.getAbsolutePath();
    pathavail = true;
  }
}
