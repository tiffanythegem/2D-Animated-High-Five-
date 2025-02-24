# 2D-Animated-High-Five-
This project explores the use of object-oriented programming in graphics, as well as scene hierarchies to perform transformations for 2D animation.



This animation code depicts two hand 'high-fiving' with a neat explosion in the background. The two hands have separate animations and appearances, while the explosion grows and rotates.

Functionalities Implemented

This project contains various class files that all contribute to the animation in some way, among other helper functions in the main file. These include:

1. Left Hand (LeftHand.pde)
2. 
 - A front-right facing hand that moves from the left of the screen to the center, accompanied by a trailing wind effect.

 - Takes in a parameter float named "move" that dictates not only the movement speed of the left hand, but controls the effects tied to that speed. Along with the display function, a helper "drawHand" function will actually draw and update the hand, while the "display" function calls the helper function and resets the hand at a designated point

 - The hierarchy here can be seen with the wind effect following the hand. The wind effects inherit the rest of the hand's translation animation, however, it will also scale so that the wind effect elongates as the hand gets closer to the center

2. Right Hand (RightHand.pde)

 - A left facing hand that moves from the right of the screen to the center, whose thumb moves with the rest of the hand as well as having it's own 'jiggle', and is accompanied by a trailing wind effect.

 - Doesn't take any parameters. Has the "update" function to update the hand's movement, along with the "drawHand", "drawPalm", "drawFingers", "drawThumb" functions that all contribute to drawing parts of the hand. This file also contains the class WindLine to create the windline effects for the right hand, which inherit the movement of the rest of the hand as well as changing shape, stretching as the hand moves as well as resetting as the hand does. 

3. Explosion effect (Explosion.pde)

 - An explosion effect in the background that at first grows, and then alternates between rotating counter-clockwise and clockwise. 

 - The "BigBang" constructer takes two float parameters, "x" and "y", that control the position of the explosion. Contains the "update" function that updates the wanted movement of the explosion, along with the "drawBigBang" function to actually draw the explosion, and the "display" function to display it. 

 - The farther away, red explosion effect inherits the position of the orange effect, and then is rotated to be offset with the orangge effect. 

