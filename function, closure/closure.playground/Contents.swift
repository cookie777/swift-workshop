import UIKit





// Is this closure?
var q1 = {}
print(q1)

// Is this closure?
var q2 = {print("123")}
print(q2)

//var q2 = {
//    return 1
//}

//





// What is the diff between f1, f2 and f3
func reportMyScore() -> Int{
    let num = 84
    return num
}

var f1 = reportMyScore
var f2 = reportMyScore()
var f3 = f1()

print(f1)
print(f2)
print(f3)




// What is the diff between c3, c4 and c5
var c1 = { () -> Int in
    let num = 84
    return num
}

var c2 = { () -> Int in
    let num = 84
    return num
}()

var c3 = c1()

print(c1)
print(c2)
print(c3)


//c2 is IIFE (Immediately Invoked Function Expression)

/*:
 # The point is
    - Am I passing function(closure) itself? or invoking and passing its result
 */

