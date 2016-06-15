//: [Previous](@previous)
/*:
 
 # Fancy trees
 
 Now that you've conquered a basic tree, can you make it fancier?
 
 - callout(Copy your code): Grab the code you wrote for `drawTree` on the last page and copy it into the body of the `drawTree` function below!
 
 ## Modify to make a fancier tree
 
 We created a pretty basic looking tree in the last few exercises. Now that we have a fully recursive implementation, can you make it fancier?
 
 Before you get started, let's take a look at the functions you can use!
 
 ### Drop and lift the pen
 
 - callout(Drop the pen): penDown()
 
 - callout(Lift the pen): penUp()
 
 - note: The pen starts out down
 
 ### Moving the pen
 
 - callout(Move by a number of steps): move(steps: Int)
 
 - callout(Move directly to coordinates): moveTo(x x: Int, y: Int)
 
 - note: This is called with labels for both parameters! eg. `moveTo(x x: 10, y: 40)`
 
 - callout(Rotate heading by an angle): rotate(degrees: Int)
 
 ### Change the pen
 
 - callout(Set color of pen): setColor(red red: Double, green: Double, blue: Double)
 
 - note: This is called with labels for all 3 parameters! Each value should be between 0 and 1. eg. `setColor(red: 0.0, green: 0.0, blue: 0.0)` would change the pen to be black. `setColor(red: 1.0, green: 0.0, blue: 0.0)` would change the pen to be red.
 
 - callout(Set thickness of pen): setThickness(thickness: Double)

 ## Get started!
 
 - experiment: Let your imagination go wild and make something awesome!
 
 */

func drawTree(levels: Int) {
    
}
drawTree(5)

/*:
 
 ## Inspiration
 
 Here are some ideas to try out...
 
 - Make branches thinner with each iteration (you may want to add additional parameters).
 - Decrease the angle in between branches with each iteration (you may want to add additional parameters).
 - Decrease the length of branches with each iteration (you may want to add additional parameters).
 - Add "leaves" to the tips of the tree (draw a leaf before your `return` call).
 - Introduce randomness! Real trees are not perfectly symettrical, why should yours be?
 - Change color between branches or for leaves.
 
 */
//: [Next](@next)
//:
//: This is setup code to make the live visualization work!
Pen.delay = 0.2
import XCPlayground
import Foundation
let results = DrawingScene.setup()
XCPlaygroundPage.currentPage.liveView = results
