Bubble b;

void setup()
{
 size(640,360);
 b = new Bubble(100,-100);
}

void draw()
{
 background(255);
 b.ascend();
 b.display();
}

void mousePressed()
{
 b = new Bubble(mouseX,mouseY);
}
