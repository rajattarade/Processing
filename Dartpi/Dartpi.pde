// Daniel Shiffman
// http://codingtra.in
// Attraction / Repulsion
// Video: https://youtu.be/OAcXnzRNiCY
// Processing transcription: Chuck England

import java.util.*;

List<PVector> attractors = new ArrayList<PVector>();
List<Particle> particles = new ArrayList<Particle>();
int inc=0;
int outc=0;

void setup() {
  size(400, 400);


  // for (int i = 0; i < 10; i++) {
  //   attractors.push(createVector(random(width), random(height)));
  // }
}


void draw() {
  background(51);
  stroke(255);
  strokeWeight(4);
  fill(100, 100, 100);
  ellipse(200, 200, 400, 400);
  particles.add(new Particle(random(width), random(height)));
 
  Particle particle = particles.get(0);
  float x = particle.getX();
  float y = particle.getY();
  float ylimit = sqrt(40000-((x-200)*(x-200)));

  //ellipse(x, ylimit+200,10,10);
  //ellipse(x, 200-ylimit,10,10);
  if(y > 200-ylimit & y < ylimit+200)
  inc++;
  else
  outc++;
  
    //if (  y  >  (  sqrt(200-(x*x))  )  & y  >  -(  sqrt(200-(x*x))  ));
    //println("OUTSIDE");
  particle.update();
  particle.show();
  delay(5);
  particles.remove(0);
  print(inc+"  "+outc+"  ");
  float calpi = (float(inc)/float(inc+outc))*4;
  println(calpi+"  ");
  float error=(calpi/PI)*100;
  if(error > 99.99 & error < 100.01)
  while(true);
}
