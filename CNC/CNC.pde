PShape s;

void setup() {
  size(100, 100);
  // The file "bot.svg" must be in the data folder
  // of the current sketch to load successfully
  s = loadShape("bot.svg");
}

void draw() {
  shape(s, 10, 10, 80, 80);
}
