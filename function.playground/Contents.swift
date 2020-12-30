import UIKit


/*
 This section explain one of the case why we need to use function as variable,
 and use is as an argument of another function.
 */



/*:
     - When you make breakfast, eggs, bread, soup are always same.
     - But regarding drinks, it changes.
     - Depend on the day, I want to drink differnet beverage
        - (eg, coffee, tea, smoothie...)
     - What should I do?
 */
func makeBreakfast(){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    //drink....?
}



/*:
    # Solution1
    - What if I create every function for each drink menu ?
    - Yes, this will solve the problem.
    - But a lot of repetatie code, isn't it?
 */
func makeBreakfastAndCoffee(){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    // Coffee
    print("boil water")
    print("put coffee powder")
    print("use french press")
}

func makeBreakfastAndTea(){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    // Tea
    print("boil water")
    print("put tea pack")
}
func makeBreakfastAndSmoothie(){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    //　Smoothie
    print("prepare apple")
    print("prepare banana")
    print("prepare ice")
    print("put them into mixer")
    print("put in milk")
    print("mix thme")
}

// Day1
makeBreakfastAndCoffee()
// Day2
makeBreakfastAndTea()
// Day3
makeBreakfastAndSmoothie()





/*:
    # Solution2
    - Ok, what if create only drink menu function beforehand.
    - and each time we call it.
    - Yes, it works. But still we have to create a lot of function to each menu
 */


func coffee() -> (){
    // Coffee
    print("boil water")
    print("put coffee powder")
    print("use french press")

}

func tea(){
    // Tea
    print("boil water")
    print("put tea pack")
}

func smoothie(){
    //　Smoothie
    print("prepare apple")
    print("prepare banana")
    print("prepare ice")
    print("put them into mixer")
    print("put in milk")
    print("mix them")
}




func makeBreakfastAndCoffee2(){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    coffee()
}
func makeBreakfastAndTea2(){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    tea()

}
func makeBreakfastAndSmoothie2(){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    
    smoothie()

}

// Day1
makeBreakfastAndCoffee2()
// Day2
makeBreakfastAndTea2()
// Day3
makeBreakfastAndSmoothie2()




/*:
    # Solution3
    - What if we can "put function as an argument, like a variable"?
    - Is it possible? -> yes
    - By doing this, yes! we can avoid repetative code!
 */

func makeBreakfast(drinkMenu: ()->()){
    
    print("fry eggs")
    
    print("toast bread")
    
    print("heat soup")
    
    // whatever dinkMenu we get, we invoke it!
    drinkMenu()
}

// Day1
makeBreakfast(drinkMenu: coffee)
// Day2
makeBreakfast(drinkMenu: tea)
// Day3
makeBreakfast(drinkMenu: smoothie)
// Day4



/*:
    # Solution4
    - Now it's perfect!
    - But wait... what if I want to drink different beverage?
    - Do I have to create another drink menu (function), each time?
    - If I drink different  beverage every 100 days, do I have to create 100 function!?
 
    - In this case, we don't even have to create function.
    - Instead of function, we can just create it when we pass it. == using closure
 */



// Day1
makeBreakfast(drinkMenu: {
    // Today I wanna drink orange juice
    print("cut orange")
    print("squeeze orange")
})


// Day2
makeBreakfast(drinkMenu: {
    // Today I wanna drink cocoa
    print("boil water")
    print("pour cocoa powder")
    print("mix it")
})
// Day3
makeBreakfast(drinkMenu: {
    // Today I wanna drink water
    print("pour water")
})
// Day4
makeBreakfast(drinkMenu: {
    // Today I wanna drink hot milk
    print("prepare milk")
    print("heat milk")
})










func add(v1: Int, v2 : Int) -> Int {
    return v1 + v2
}

func multi(v1: Int, v2 : Int) -> Int{
    return v1 * v2
}

func calculate(order: (Int, Int) -> (Int), e: Int ){
    
//    order = multi
//    e = 15
    
    let a = e
    let b = 23
    
    let result = order(a, b)
    
    print(result)
}

calculate(order: multi, e: 15)
