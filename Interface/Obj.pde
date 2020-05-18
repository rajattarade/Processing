class valve {

  float x;
  float y;
  float diameter;

  valve(int q, int r)
  {
    x = q;
    y = r;
    diameter = 45;
  }

  void display(int s)
  {
    stroke(0);
    if(s==0)
    fill(255,0,0);
    if(s==1)
    fill(0,255,0);
    ellipse(x, y, diameter, diameter);
  }
}

class comp {

  float x;
  float y;

  comp (int i, int j)
  {
    x = i;
    y = j;
  }

  void display(int s)
  {
    stroke(0);
    if(s==0)
    fill(255,0,0);
    if(s==1)
    fill(0,255,0);
    rect(x, y, 100, 100);
  }
}
