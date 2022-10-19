import UIKit

// Mark:- Higher Order Functions

let numArray = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

// Mark:- Map

func map() {
    
    var emptyArray:[Int] = []
    for number in numArray{
        emptyArray.append(number*2)
    }
    print("Map Array: \(emptyArray)")
    
    // Using Map Method 
    
    // Method 1 :-
    
    let m1 = numArray.map { (value:Int) -> Int in
        return value*2
    }
    print("M1: \(m1)")
    
    // Method 2:-
    
    let m2 = numArray.map { (value:Int) in
        return value*2
    }
    print("M2: \(m2)")
    
    // Method 3 :-
    
    let m3 = numArray.map { (value) in
        return value*2
    }
    print("M3: \(m3)")
    
    // Method 4 :-
    
    // One Line Code
    
    let m4 = numArray.map { $0 * 2 }
    print("M4: \(m4)")
}

// Mark:- Filter

func filter() {
    
    var FilterArray:[Int] = []
    for number in numArray {
        if number % 2 == 0 {
            FilterArray.append(number)
        }
    }
    
    print("Filter Array: \(FilterArray)")
    
    // Using Filter Method
    // One Line Code
    
    let filteredArray = numArray.filter { $0 % 2 == 0 }
    print("Filtered Array: \(filteredArray)")
    
}

// Mark:- Reduce

func reduce() {
    let array = [1,2,3,4,5]
    var sum:Int = 0
    for num in array {
        sum += num
    }
    
    print("Sum: \(sum)")
    
    // Using Reduce Method
    // One Line Code
    
    let sumReduce = array.reduce(0, { $0 + $1 }) // String Array can also be merged using this method.
    let sumReduce1 = array.reduce(0, +) // Same Meaning -> $0 + $1
    print("Sum Reduce: \(sumReduce)")
    print("Sum Reduce1: \(sumReduce1)")
}

// Mark:- Sort

func sort() {
    let sortedArray = numArray.sorted { $0 > $1 }
    print("Sorted Array: \(sortedArray)")
}

// Mark:- FlatMap

func flatmap() {
    let arrayFlat = [[11,12,13],[14,15,16] ]
    var mapArray:[Int] = []
    for number in arrayFlat {
        mapArray += number
    }
    print("Array: \(mapArray)")
    
    // Using Flatmap Method
    // One Line Code
    
    let flatmap = arrayFlat.flatMap{$0}
    print("Flat Map: \(flatmap)")
    
    let NameString = ["Ali",nil,"Ahmed",nil,"Zain",nil].compactMap{$0}
    print("String Flat Map: \(NameString)")
}

// Mark:- Chaining : Using Multiple function in one line

func chaining() {
    let array = [[11,12,13],[14,15,16]]
    let chaining = array.flatMap{$0}.filter{ $0 % 2 == 0}.map{ $0 * $0 }
    print("Chaining: \(chaining)")
}

map()
filter()
reduce()
sort()
flatmap()
chaining()
