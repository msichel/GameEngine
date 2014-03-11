boolean mouseClicked0=false;
boolean mouseReleased0=false;
boolean mouseHeld0=false;
boolean mousePressed0 = false;

boolean mouseClicked1=false;
boolean mouseReleased1=false;
boolean mouseHeld1=false;
boolean mousePressed1 = false;;

GameObject root;
void setup()
{
  root = new GameObject();
  BlackBox.init(this);
}
void draw()
{
  input();
  update();
  render();
}
void input()
{
  mouseInput();
  
  root.input();
  
 mouseHeld0 = mousePressed0;
 mouseHeld1 = mousePressed1;
}
void update()
{
  root.update();
}
void render()
{
  root.render();
}
void mouseInput()
{
  if(mousePressed)
  {
    if(mouseButton == LEFT)
    {
      mousePressed0 = true;
    }
    if(mouseButton == RIGHT)
    {
      mousePressed1 = true;
    }    
  }
  if(mousePressed0)
  {
    mouseReleased0 = false;
    if(!mouseHeld0)
    {
      mouseClicked0 = true;
    }
    else
    {
      mouseClicked0 = false;
    }
  }
  else
  {
    mouseClicked0 = false;
    if(mouseHeld0)
    {
      mouseReleased0 = true;
    }
    else
    {
      mouseReleased0 = false;
    }
  }
  if(mousePressed1)
  {
    mouseReleased1 = false;
    if(!mouseHeld1)
    {
      mouseClicked1 = true;
    }
    else
    {
      mouseClicked1 = false;
    }
  }
  else
  {
    mouseClicked1 = false;
    if(mouseHeld1)
    {
      mouseReleased1 = true;
    }
    else
    {
      mouseReleased1 = false;
    }
  }
}

