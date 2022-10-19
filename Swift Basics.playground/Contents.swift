import UIKit

// MARK:- Closure with accepting parameters

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
 
driving("Karachi")

print("------------------------------------------------------------------------")

// MARK:- Returning in closure

let drivingSomePlace = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
 
let message = drivingSomePlace("Lahore")
print(message)

print("------------------------------------------------------------------------")

// MARK:- Closure as a parameter

let drive = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: drive)

print("------------------------------------------------------------------------")

// MARK:- Trailling Closure

func traveled(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

traveled {
    print("I'm driving in my car")
}

print("------------------------------------------------------------------------")


// MARK:- Using closures as parameters when they accept parameters

func travels(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travels { (place: String) in
    print("I'm going to \(place) in my car")
}

print("------------------------------------------------------------------------")

// MARK:- Using closures as parameters when they return values

func travell(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travell { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// MARK:- short method
// MARK:- Swift knows about parameter and returning of a closure

print("------------------------------------------------------------------------")

travell {
    "I'm going to \($0) in my car"
}

print("================== Structures | Properities | Methods ==================")

// MARK:- Creating your own Struct

struct Sports {
    var name: String?
}
 
let game = Sports(name: "Tennis")
print(game.name!)

print("------------------------------------------------------------------------")

// MARK:- Computed Properities

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

print("------------------------------------------------------------------------")

// MARK:- String Methods

let string = "Do or do not, there is no try."

print(string.count)
print(string.sorted())
print(string.hasPrefix("Do"))
print(string.uppercased())

print("------------------------------------------------------------------------")

// MARK:- Static properties and methods

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed = Student(name: "TT")
let Tayolor = Student(name: "Tayolor")

print(Student.classSize)

print("------------------------------------------------------------------------")

// MARK:- Classes

class Person {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes:String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name:String
    var age:Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("Helloooo")
    }
}

print("------------------------------------------------------------------------")

// MARK:- Control Flow.

// Continue : A continue statement ends program execution of the current iteration of a loop statement but does not stop execution of the loop statement

var sum = 0;
for var i = 0 ; i < 5 ; i++ {
    if i == 4 {
        continue //this ends this iteration of the loop
    }
    sum += i //thus, 0, 1, 2, and 3 will be added to this, but not 4
}

// Break : A break statement ends program execution of a loop, an if statement, or a switch statement.

var sum = 0;
for var i = 0 ; i < 5 ; i++ {
    if i == 2 {
        break //this ends the entire loop
    }
    sum += i //thus only 0 and 1 will be added
}

// Fallthrough : A fallthrough statement causes program execution to continue from one case in a switch statement to the next case

var sum = 0
var i = 3
switch i {
case 1:
    sum += i
case 2:
    sum += i
case 3:
    sum += i
    fallthrough //allows for the next case to be evaluated
case i % 3:
    sum += i
}

// Throw : You use a throw statement to throw an error.

// Return : A return statement occurs in the body of a function or method definition and causes program execution to return to the calling function or method.

func myMethod(){
    newMethod()
}

func newMethod(){
    var sum = 0;
    sum += 2;
    if sum > 1 {
        return //jumps back to myMethod()
    }
    sum += 3; //this statement will never be executed
}

