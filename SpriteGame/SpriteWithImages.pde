public class SpriteWithImages extends Sprite
{
  protected PImage img;
  
  public SpriteWithImages(float x, float y, String fileName)
  {
    super(x, y);
    img = loadImage(fileName);
  }
  
  public void drawSprite()
  {
    img.resize(100, 100);
    image(img, pos.x, pos.y);
  }
  
public void keyboardControl()
  {
    if(key == 'i') 
    {
      vel = new Vector2(0, -2);
    }
    
    if(key == 'k')
    {
      vel = new Vector2(0, 2);
    }
    
    if(key == 'j')
    {
      vel = new Vector2(-2, 0);
    }
    
    if(key == 'l')
    {
      vel = new Vector2(2, 0);
    }
  }
}