class Enemy extends Sprite
{
  protected color col;

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