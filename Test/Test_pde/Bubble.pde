class Bubble {
  float x;
  float y;

  Bubble(float xp, float yp)
  {
    x=xp;
    y=yp;
  }

void ascend()
{
 y--;
}

void pop()
{
 y=-100;
}

  void display()
  {
    stroke(0);
    fill(127);
    ellipse(x, y, 64, 64);
  }
}
