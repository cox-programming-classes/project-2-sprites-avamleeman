Player player;
Enemy enemy;
SpriteWithImages star;

void setup()
{
  size(800, 800);
  star = new SpriteWithImages(100, 200, "purple.png");
  player = new Player(width/2, height/2);
  enemy = new Enemy(100, 100, color(200, 0, 0));
  
  ArrayList<Sprite>
  list.add(new Enemy(...));//put x coord, ycoord, color inside
  list.add(new Player(...));
  
  list.get(1).drawSprite(...);
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