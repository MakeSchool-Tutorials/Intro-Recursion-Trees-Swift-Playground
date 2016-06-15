import Foundation
import SpriteKit

let queue = dispatch_queue_create("Drawing", DISPATCH_QUEUE_SERIAL)

func delay() {
    if Pen.delay == 0.0 { return }
    let delay = UInt32(Pen.delay * Double(USEC_PER_SEC))
    usleep(delay)
}

public func penDown() {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.penDown()
    }
}

public func penUp() {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.penUp()
    }
}

public func moveFifty() {
    move(50)
}

public func move(steps: Int) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.move(steps)
    }
}

public func moveToX(x: Int, y: Int) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.moveTo(x: x, y: y)
    }
}

public func moveTo(x x: Double, y: Double) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.moveTo(x: x, y: y)
    }
}

public func rotateNinety() {
    rotate(90)
}

public func rotate(degrees: Int) {
    rotate(Double(degrees))
}

public func rotate(degrees: Double) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.rotate(degrees)
    }
}

public func setColor(red red: Double, green: Double, blue: Double) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.setColor(red: red, green: green, blue: blue)
    }
}

public func setColor(nsColor c: NSColor) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.setColor(nsColor: c)
    }
}

public func setThickness(thickness: Double) {
    dispatch_async(queue) { () -> Void in
        delay()
        Pen.sharedInstance.setThickness(thickness)
    }
}

//public func coordsForCircle(x: Double, y: Double, radius: Double, samples: Int) -> [(x: Double, y: Double)] {
//    var coords = [(x: Double, y: Double)]()
//    for i in 0...samples {
//        let angle = Double(i) / Double(samples) * 2 * M_PI
//        let x = radius * cos(angle) + x
//        let y = radius * sin(angle) + y
//        coords.append((x, y))
//    }
//    return coords
//}