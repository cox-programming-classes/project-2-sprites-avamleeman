public class Thing extends Sprite implements ICollisionBox
{
  protected Vector2 pos;
  protected Vector2 vel;
  protected float r;
  
  public Thing(float x, float y)
  {
   super(x, y); 
  }
  
  public Thing(Vector2 s)
  {
    super(s); 
  }
  
  public void drawSprite()
  {
    fill(#649568);
    rect(pos.x, pos.y, 30, 50);
    
    fill(#649868);
    triangle(pos.x, pos.y, pos.x+30, pos.y, pos.x+15, pos.y-(15 * sqrt(3)/2));
    
    fill(#646668);
    triangle(pos.x, pos.y, pos.x-30, pos.y, pos.x-15, pos.y+(15 * sqrt(3)/2));
    
    fill(#649867);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
  
  float getRadius()
  {
    return r;
  }
  
  Vector2 getPosition()
  {
    return pos;
  }
  
  boolean colldiesWith(ICollisionBox other)
  {
    float distance = this.pos.subtract(other.getPosition()).mag();
    return distance < this.r + other.getRadius();
  }
  
   public void keyboardControl()
  {
    if(keyCode == UP) 
    {
      vel = new Vector2(0, -2);
    }
    
    if(keyCode == DOWN)
    {
      vel = new Vector2(0, 2);
    }
    
    if(keyCode == LEFT)
    {
      vel = new Vector2(-2, 0);
    }
    
    if(keyCode == RIGHT)
    {
      vel = new Vector2(2, 0);
    }
  }
}