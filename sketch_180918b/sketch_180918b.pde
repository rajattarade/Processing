PFont font;
// The font must be located in the sketch's 
// "data" directory to load successfully
void draw()
{
font = loadFont("LetterGothicStd-32.vlw");
textFont(font, 32);
text("word", 10, 50);
}
