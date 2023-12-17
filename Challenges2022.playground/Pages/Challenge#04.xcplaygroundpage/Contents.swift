/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 4: Polygon area

 Write a unique function that receives a polygon and returns its area.
 * The function will receive only one polygon each time.
 * Supported polygons: Triangles, Rectangles and Squares.
 * Include a sample of use of each type of polygon.
 
*/
protocol Polygon {
    func area() -> Double
    func printArea()
}

extension Polygon {
    func printArea() {
        print("Area of \(self): \(area()) cms")
    }
}

struct Rectangle: Polygon {
    let length: Double
    let width: Double
    
    func area() -> Double {
        length * width
    }
}

struct Square: Polygon {
    let side: Double
    
    func area() -> Double {
        side * side
    }
}

struct Triangle: Polygon {
    let base: Double
    let height: Double
    
    func area() -> Double {
        (base * height)/2
    }
}

@discardableResult
func area(of polygon: Polygon) -> Double {
    polygon.printArea()
    return polygon.area()
}

area(of: Rectangle(length: 10, width: 5))
area(of: Triangle(base: 10, height: 15))
area(of: Square(side: 5))

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
