public class Star extends Sprite
{
  //PROPERTIES
  protected Vector2 pos; //protected means that other functions/things cannot change the properties of the object
  protected Vector2 vel;
  
  //CONSTRUCTOR
  public Star(float x, float y)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(0, 0);
  }
  
  public Star(float x, float y, float dx, float dy)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(dx, dy);
  }
  
  //BEHAVIORS
  public void draw()
  {
  fill(#2b6389);
  Vector2 v = new Vector2(0, -50);
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
  
  public void move()
  {
    //step the position "one frame" by the velocity vector
    pos = pos.add(vel);
    
    if(pos.x - 50 > width) pos.x = 50;
    else if(pos.x  - 50 < 0) pos.x = 50; //else if cannot be true if if is true
    
    if(pos.y - 50 > height) pos.y = 50;
    else if(pos.y - 50 < 0) pos.y = 50;
  }
  
  public void keyboardControl()
  {
    //If you hit up arrow on keyboard
    if(key == 'w') //pink means special variable name built into processing)
    {
      vel = new Vector2(0, -2); //will go upwards, negative y
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