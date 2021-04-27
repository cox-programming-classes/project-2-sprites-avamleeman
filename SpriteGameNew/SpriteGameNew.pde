Thing thing;
ArrayList< ICollisionBox> collidingObjects;

void setup()
{
  size(800, 800);
  thing = new Thing(100, 100);
  collidingObjects = new ArrayList< ICollisionBox>();
  collidingObjects.add(thing);
}

void checkCollisions()
{
  for(int i = 0; i < collidingObjects.size() - 1; i++)
  {
    ICollisionBox obj = collidingObjects.get(i);
  
    for(int j = i + 1; j < collidingObjects.size() - 1; j++)
   {
    ICollisionBox obj2 = collidingObjects.get(j);

      if(obj.collidesWith(obj2)) 
      {
        textSize(50);
        fill(255, 0 , 0);
        text("Boom", 100, 500);
      }
    }
  }
}

void draw()
{ 
  background(255);
  thing.drawSprite();
  thing.keyboardControl();
  thing.move();
}
  