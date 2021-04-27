public class Player extends Sprite implements ICollisionBox
{
  protected Vector2 pos;
  protected Vector2 vel;
  protected float r;
  
  public Player(float x, float y)
  {
    super(x, y); 
  }
  
  public Player(Vector2 s)
  {
    super(s); 
  }
  
  boolean colldiesWith(ICollisionBox other)
  {
    float distance = this.pos.subtract(other.getPosition()).mag();
    return distance < this.r + other.getRadius();
  }
  
  float getRadius()
  {
    return r;
  }
  
  public void drawSprite()
  {
    fill(#2b6389);
  Vector2 v = new Vector2(0, -r);
  Vector2 v2 = v.rotate(PI/5).scale(0.5);
  Vector2 v3 = v.rotate(2*PI/5);
  Vector2 v4 = v2.rotate(2*PI/5);
  Vector2 v5 = v3.rotate(2*PI/5);
  Vector2 v6 = v4.rotate(2*PI/5);
  Vector2 v7 = v5.rotate(2*PI/5);
  Vector2 v8 = v6.rotate(2*PI/5);
  Vector2 v9 = v7.rotate(2*PI/5);
  Vector2 v10 = v8.rotate(2*PI/5);
  
  beginShape();
  
  vertex(pos.add(v).x, pos.add(v).y);
  vertex(pos.add(v2).x, pos.add(v2).y);
  vertex(pos.add(v3).x, pos.add(v3).y);
  vertex(pos.add(v4).x, pos.add(v4).y);
  vertex(pos.add(v5).x, pos.add(v5).y);
  vertex(pos.add(v6).x, pos.add(v6).y);
  vertex(pos.add(v7).x, pos.add(v7).y);
  vertex(pos.add(v8).x, pos.add(v8).y);
  vertex(pos.add(v9).x, pos.add(v9).y);
  vertex(pos.add(v10).x, pos.add(v10).y);
  
  endShape();
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