import UIKit

// https://useyourloaf.com/blog/swift-guide-to-map-filter-reduce/




// What is map internally doing?

func mapDemo(array: [Int], order: (Int)->(Int) ) -> [Int]{
    
    var newArray: [Int] = []
    
    for value in array {
        newArray.append(order(value))
    }
    
    return newArray
    
}


// func as order
func squares(val:Int)->Int{
    let ans = val*val
    return ans
}

func addOne(val:Int)->Int{
    let ans = val+1
    return ans
}


var mapR1 = mapDemo(array: [2, 4, 5, 7], order: squares)
//[4, 16, 25, 49]
var mapR2 = mapDemo(array: [2, 4, 5, 7], order: addOne)
//[3, 5, 6, 8]

var mapR3 = mapDemo(array: [2, 4, 5, 7], order: { $0 - 1 })
//[1, 3, 4, 6]


var mapr1 = [2, 4, 5, 7].map{value in value * value}
var mapr2 = [2, 4, 5, 7].map{$0+1}
var mapr3 = [2, 4, 5, 7].map{$0-1}





















// What is filetr doing?

func filterDemo(array: [Int], order: (Int)->(Bool) ) -> [Int]{
    var newArray: [Int] = []
    
    for value in array {
        if order(value){
            newArray.append(value)
        }
    }
    
    return newArray
}


// func as order
func isEven(val: Int)->Bool{
    if val%2 == 0{
        return true
    }else{
        return false
    }
}

func isLargerThanFour(val: Int)->Bool{
    if val > 4{
        return true
    }else{
        return false
    }
}


var filterR1 = filterDemo(array: [2, 4, 5, 7], order: isEven)
//[2, 4]
var filterR2 = filterDemo(array: [2, 4, 5, 7], order: isLargerThanFour)
//[5, 7]

var filterr1 = [2, 4, 5, 7].filter{ $0 % 2 == 0 }
var filterr2 = [2, 4, 5, 7].filter{ $0 > 4 }














// What is Ruduce doing?

//let items = [2.0,4.0,5.0,7.0]
//let total = items.reduce(10.0, +)
//// 28.0

func reduceDemo(array: [Int],defaultValue: Int, order: (Int, Int)->(Int) ) -> Int{
    
    var totalRecord  = defaultValue

    for currentValue in array {
        totalRecord = order(totalRecord, currentValue)
    }

    return totalRecord
}

// func as order

func add(total: Int, current: Int)->Int{
    return total + current
}

func product(total: Int, current: Int)->Int{
    return total * current
}


var reduceR1 = reduceDemo(array: [2, 4, 5, 7], defaultValue: 0 ,order: add)
// 18
var reduceR2 = reduceDemo(array: [2, 4, 5, 7], defaultValue: 100 ,order: add)
// 118
var reduceR3 = reduceDemo(array: [2, 4, 5, 7], defaultValue: 2, order: product)
// 560


var reducer1 = [2, 4, 5, 7].reduce(0) { (total, current) -> Int in
    total + current
}
// 18
var reducer2 = [2, 4, 5, 7].reduce(100) { $0 + $1}
// 118
var reducer3 = [2, 4, 5, 7].reduce(2) { $0 * $1}
// 560














// Advanced
// What is  reduce(into:_:) ?

let numbers = [2, 4, 5, 7, 4, 5]
let numberCount = numbers.reduce(into: [:]) { counts, number in
    counts[number, default: 0] += 1
}
print(numberCount)
// [4: 2, 2: 1, 5: 2, 7: 1]


// Sudo code
// Simple concept

//func reduceNumber(){
//  for number in numbers{ // iterate each letter , eg 2, 4....
//   // creating empty dictionary
//    var counts: [Int: Int] = [:]
//    var default = 0
//     //if number doesn't exist in counts, set defualt value (0)
//    if counts[number] == nil{
//      counts[number] = default + 1
//    }else{
//    // if number already exist, increment
//      counts[number] += 1
//    }
//    return counts // return dictonary
//  }
//}
//let numbers = [2, 4, 5, 7, 4, 5]
//let numberCount = reduceNumber()
//print(numberCount)



// What actually is happening beheind ?
func reduceNumber(array: [Int], defaultValue: Int, order: ([Int:Int], Int, Int)->[Int:Int] ) -> [Int:Int]{
    
    var totalRecord : [Int: Int]  = [:]

    for currentValue in array {
        totalRecord = order(totalRecord,defaultValue, currentValue)
    }

    return totalRecord
}

// func as order
func addNumber(total: [Int: Int], defaultValue: Int,current: Int)-> [Int: Int]{
    var dict = total
    
    if let currentCount = dict[current]{
        dict.updateValue(currentCount+1, forKey: current)
    }else{
        dict.updateValue(defaultValue+1, forKey: current)
    }
    
    return dict
}


let numbers2 = [2, 4, 5, 7, 4, 5]
let numberCount2 = reduceNumber(array: numbers2, defaultValue: 0, order: addNumber)
print(numberCount2)














