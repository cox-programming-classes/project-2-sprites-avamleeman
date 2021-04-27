class Enemy extends Sprite implementd ICollisionBox
{
  protected color col;
  protected float r;

  public Enemy(float x, float y, color c)
  {
    super(x, y); 
    this.col = c;
  }
  
  public Enemy(Vector2 s)
  {
    super(s); 
  }
  
  public void drawSprite()
  {
    fill(col);
  }
  
   float getRadius()
  {
    return r;
  }
  
  boolean colldiesWith(ICollisionBox other)
  {
    float distance = this.pos.subtract(other.getPosition()).mag();
    return distance < this.r + other.getRadius();
  }
  
   public void keyboardControl()
  {
    if(key == 'w') 
    {
      vel = new Vector2(0, -2);
    }
    
    if(key == 's')
    {
      vel = new Vector2(0, 2);
    }
    
    if(key == 'a')
    {
      vel = new Vector2(-2, 0);
    }
    
    if(key == 'd')
    {
      vel = new Vector2(2, 0);
    }
  }
}