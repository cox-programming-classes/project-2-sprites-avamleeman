# Player
The Player *is a* Sprite which the person playing the game controls.  
`**class** Player **extends** Sprite` is the syntax for starting this class.  You will need to fill in the additonal details for this class.

## Properties
No additional properties are required at this time--however, you may need to add some depending on what you want to do later~!  
Remember:  Because Player *is a* Sprite, it already has a Position and Velocity and already has all the methods that you wrote in the Sprite class for free!  
  
## Constructors
You should only need to write one or two constructors for this class.  Provide an initial location for sure, and maybe a Velocity if your game requires the player to have a non-zero velocity~  Use the keyword **super** to call the Sprite class constructors as needed within the Player constructor.  
  
## Methods
Here is where you write the code that is *specific* to the Player (and not used by *other* Sprite types).  Here are the minimum methods that you need to write:

`public void move()` : Over-ride the Sprite class `move()` method by re-defining it here and use the Keyboard or Mouse as input to control how your Player moves around the screen.  
  
`public void drawSprite()` : Not Abstract this time!  This is the method that is *required* for anything that inherits from Sprite.  Draw your Player character relative to its current Position on the screen.  
  
