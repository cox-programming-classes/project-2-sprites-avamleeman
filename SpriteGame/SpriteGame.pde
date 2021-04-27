Player player;
Enemy enemy;
SpriteWithImages star;
ArrayList< ICollisionBox> collidingObjects;

void setup()
{
  size(800, 800);
  //star = new SpriteWithImages(100, 200, "purple.png");
  star = new Star(400, 300, 100, 100, 30);
  player = new Player(width/2, height/2);
  enemy = new Enemy(100, 100, color(200, 0, 0));
  collidingObjects = new ArrayList< ICollisionBox>();
  
  ArrayList<Sprite>
  list.add(new Enemy(...));//put x coord, ycoord, color inside
  list.add(new Player(...));
  list.get(1).drawSprite(...);
  
  collidingObjects.add(enemy);
  collidingObjects.add(player);
}

void checkCollisions
{
  for(int i = 0; i < collidingObjects.size() - 1; i++)
  {
    ICollisionBox obj = collidingObjects.get(i);
    
    for(int j = i + 1; j < collidingObjects.size() - 1; j++)
    {
      if(obj.collidesWith(obj2)
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
  enemy.setVelocity(new Vector2(random(10)-5, random(10)-5));

  player.keyboardControl();
  player.move();
  
  enemy.keyboardControl();
  enemy.move();
  
  star.keyboardControl();
  star.move();
  
  player.drawSprite();
  enemy.drawSprite();
  star.drawSprite();
}