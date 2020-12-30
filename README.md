# What to learn

## Basics

### Reference

- what is Reference type ?
    - kind a shortcut of folder
    - a folder that possesses a address(where the folder is)
- why Reference type ?
    - by sharing same address, we don't have to copy object whenever we want to access
    - by storing only address, we can store variable size of object after in heap memory
    - reference + function -> you don't have to return
- deep copy, shallow copy
- Assign(creating) variable is 2 phase
    - Declaration: creating box
    - Initialization: putting something inside the box


### Class sequence (programmatically?)
- What is happening when viewController is instantiated?
- order
    - instance variable -> init() -> view did load
- class is afraid of nil (all the instance variables have to be initialized == not nil when it is instantiated)
- why is it better to set UIView(label, button) as instance variables?
    - because we can access from outside of the class


## Function, closure

### Func treating as variable
- function can be treated as variable
- It is like a "block of order(command)"
- Sometime, it is much efficient to pass "block of order(command)" to a function
- We can pass function to another function as an parameter(argument)
- We can also return function in the function


### Closure

- When we pass or receive function, we don't always have to name the function.
- We can directly pass "block of order(command)" without a name == closure
- In other words, if we want to use that  "block of order(command)" many times, it's better to name it and use it == function
- We can also invoke(execute) the closure as soon as it's created, and get its return value ==  Immediately-invoked Function Expression (IIFE)
- closure is Reference
    - if we create closure, "block of order(command)" will stored in some heap memory,
    and we get the "reference"

### Map, filter, ....

- map vs foreach
- why closure (or func as variable)
- I explain details with demo in playground files



## Xcode, layout

### Auto layout

- programmatic preparation flow
    - First, set UIView(label, image, button...)
    - Add to view as subView
    - Set constrains
- why is it better to use (wrap by) stack view ?
    - because it's much easier to manage subViews' position
    - it's also ok to put stack view in stack view
- basically, in stack view
    - what we decide about subViews are only "size" (not position, space)
    - we set subViews' position by stackView's constrains

### Subclass (split a uiView)
    - You don't always have to define all uiView(label, button) in a controller view
    - You can define in other file, as an component.
    - And at each controller view, only we have to do is call the component
    - This ways is more readable, manageable, reusable

### Scene change

- what is NV view
- what is tab view
- present vs push




## Others

### Delegate

- what is going behind the delegate
- why delegate
    - delegation is behind, don't know
- See demo files

### Component (atomic design pattern)

- Advanced using of component (separate UIViews)
- We create not only component but also combination of component as modules 
- Advantage : reusable , readable, less code, easy to manage, connected to design guide,
- Disadvantage: less ad in small project. No need when using a lot of type of view, lots of files

### Optional , extension → learn by practical code


# How to change project's name?

https://medium.com/swlh/renaming-a-project-in-xcode-30d0cd96d3ee
https://medium.com/@joe.rocca/renaming-the-project-source-folder-in-xcode-1cfdeeb91d0e


