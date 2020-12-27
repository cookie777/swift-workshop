# What to learn

### Reference

- what is Reference type ?
    - kind a shortcut
- why Reference type ?
    - by sharing same address, we don't have to copy object whenever we want to access
    - by storing only address, we can store variable size of object after in heap memory
    - don't have to return its value
- deep copy, shallow copy
- 2 phase → creating box, putting something inside the box

### Class sequence (programatically?)

- class order
    - instance -> init() -> view did load
- afraid of nil
- why as instance variables?
- static

### Func treating as var

- before that...
    - it's better to know we can treat function as variable
    - able to store as variable
    - "block of order(command)"

### Why treat as var ?

- we want to treat not only values but also "block of order(command)"
- ex, breakfast

### Auto layout

- programatic preparation flow
- view in subbiew
- why stack view
    - stack view in stack view
- basically in stack view → sub is only size, others are only margin
    - constrains ? frame?

### Subclass (separate uiview)

- component
- function
- passing parametor

### Closure

- closure is function without name + reusable
- "block of order(command)" is closure
    - in if we name it to use it multiple time == function
- closure is Reference
    - if we create closure, "block of order(command)" will stored in some memory,
    and we get the "shortcut"
- → also invoke and store its value IFFO
- (reference type so capter (don't have to explain))

### Map, filter, ....

- map vs for each
- why closure (or func as variable)
- 

### Scene change

- what is NV view
- what is tab view
- present vs push

### Delegate

- what is going behind the delegate
- why delegate
    - delegation is behind, don't know

### Component (atomic)

- creating reusable structure
- ad : reusable , readable, less code, easy to manage, connected to design guide,
- dad: less ad in small project. No need when using a lot of type of view, lots of files

### Optional , extension → learn by practical code


# Need to change project name?

https://medium.com/swlh/renaming-a-project-in-xcode-30d0cd96d3ee
https://medium.com/@joe.rocca/renaming-the-project-source-folder-in-xcode-1cfdeeb91d0e