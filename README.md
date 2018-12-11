# _Swift_

- Kevin Desousa
- kevin.desousa1@uoit.net

## About the language

> _History:_
>
> - Swift began development in 2010 by Chris Lattner, and eventually with the collaboration of other programmers at Apple was finished in October 9th 2014. Swift took language ideas from Objective-C, Rust, Haskell, Ruby, Python, C#, CLU, etc. 

> _Features:_
>
> - The Swift language was made to be easier to read to write code, while giving the developer the control needed in a true systems programming language. Swift supports inferred types to make code cleaner, and modules to eliminate headers and to provide namespaces. Memory in Swift is also managed automatically.

## About the syntax


In Swift you can define *constants* and *variables:*

```swift
//Defines a constant value
let message = "Hello! My name is: " 

//Defines a variable
var name = "Kevin" 
name = "Desousa"
```

The flow of code can be controlled using *if* statements:
```swift
  let x = 0
  let y = 0
  if x == y {
    //Runs if the condition above is true
  } else {
    //Runs if the condition above is false
  }
```

*For*, *while*, and *repeat* statements are available for looping through some code with an exit condition:
```swift
//An example of a for loop
var max = 10
for i in (0 ... max)
  print(i)
}

//For loops can also loop through collections of data
let numArray = [1,2,3,4,5]
for i in numArray {
  print(i)
}

//An example of a while loop
var i = 0
while i <= 1000 {
  print(i)
  i = i + 1
}

//An example of a repeat loop
var i = 0
repeat {
  print(i)
  i = i + 1
} while i < 10
```



## About the tools

>The Swift programming language is compiled using the standard Swift compiler. The compiler can be downloaded for MacOS and Ubuntu from: https://swift.org/compiler-stdlib/. Swift code in the `___.swift` format can be run by running the command `swift ___.swift`. Similarily, Swift projects can be built by using the command `swift build` in the root folder of the project. 

## About the standard library

Swift's standard library contains many items that a developer might find useful, these include:

> Common Data Types and Structures:
> - Int
> - Double
> - String
> - Array
> - Dictonary
> - Set
>
> Standard Functions, Abstractions and Protocols:
> - print()
> - abs()
> - Collection
> - Equatable
> - CustomDebugStringConvertible

Some example code using the standard library:

```swift
/*
Made by: Kevin Desousa
A program made to demonstrate the standard library
Uses print(), readLine(), isSuperset(), contains(), String() and reduce() with Sets and Collections
*/

let banner = """
                                                            ,---. 
        ,--.   ,--.       ,--.                              |   | 
        |  |   |  | ,---. |  | ,---. ,---. ,--,--,--. ,---. |  .' 
        |  |.'.|  || .-. :|  || .--'| .-. ||        || .-. :|  |  
        |   ,'.   |\\   --.|  |\\ `--.' '-' '|  |  |  |\\   --.`--'  
        '--'   '--' `----'`--' `---' `---' `--`--`--' `----'.--.  
                                                            '--'     
        """

print(banner)
print("Hello! What is your name?")


if let name = readLine() {
    print()
    let messages = ["Hi \(name) and welcome!", "This program is meant as a test of the standard library.", "More information from the standard library can be found at:", "https://developer.apple.com/documentation/swift/swift_standard_library"]
    for i in messages {
        print(i)
    }
}

print("\nThis is a test of sets:")
let cakeIngredients: Set = ["Cream", "Sugar", "Butter", "Flour", "Chocolate", "Bread"]
print("This cake is made out of: ", terminator:""); print(cakeIngredients)
if cakeIngredients.contains("Chocolate") {
    print("- I prefer my cake with Vanilla though.")
}

let sweetIngredients: Set = ["Cream", "Sugar"]
if cakeIngredients.isSuperset(of: sweetIngredients) {
    print("- This cake will be sweet!")
}

let numbers: Set = [1,2,3,4,5,6,7,8,9,10]
print("\nThe sequence of: ", terminator:"")
print(numbers)
print("The sequence will total up to be: " + String(numbers.reduce(0, +)))
```

## About a open source library

> An example of a open source library is SwiftyJSON. As the name suggests it is a open sourced JSON parser for Swift. Many consider it to be a better JSON parser than the one included with Swift. 
>
> The library can be found at: https://github.com/SwiftyJSON/SwiftyJSON
>

The general usage of the library is:
```swift
//Parses a JSON file from a data structure
let json = try JSON(data: dataFromString)

//To iterate through the file you can use a for loop:
for(key, value) in json {}

//To get a value in a JSON array, you can access it at: 
var = value["temp"]
```


# Analysis of the language

## Programming Style:
>
> Swift, at its core, is not purely object oriented or functional, it has elements of both. Since it has syntax that is very similar to Objective-C - strictly object oriented code can be written. Doing this, however, will not utilize Swift to its full potential. Swift was made to allow developers to use the core aspects of both functional and object oriented programming styles to write safe, easy to maintain and fast code.

## Meta Programming:
>
> At of now, Swift does not have native support for meta programming. Until the day that it is added natively, *Sourcery* (https://github.com/krzysztofzablocki/Sourcery) brings Meta-Programming to Swift. 

## Symbol Resolution:
>
> Swift has native support for Symbol Resolution / Closure.

An example of closure in Swift is:
```swift
//This code is from the Swift Docs
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reversedNames = names.sorted(by: backward)
// reversedNames is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
```

## Scoping Rules:
> 
> Currently, Swift uses Lexical Scoping as standard as Dynamic scoping is not available.

## Functional Programming Constructs:
>
> There are many functional programming constructs supported by Swift. 

For example, some example code to return even numbers from a collection:
```swift
//Taken from https://medium.com/@sdrzn/functional-programming-in-swift-221a8cabb8c
let evenNumbers = [1, 2, 3, 4, 5].filter { (number) -> Bool in
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}
```

## Type System:
>
> Swift is a compiled language - meaning it is a statically typed. With Cocoa, dynamic classes can be used from the Objective-C runtime library - but that does not make it a dynamically typed language.

## Strengths and Weaknesses:
> ### Pros:
> - The goal of Swift was to provide a language that is concise. Code written in languages such as Objective-C are roughtly 70% longer to accomplish the same tasks.
> - Code written in Swift is generally more transparent. This produces code that is "future-proof" and scalable.
> - Has interoperability with Objective-C, meaning that Swift can utilize libraries from it. This results in a large library pool that Swift can access.
> ### Cons:
> - Swift is generally only supported on Apple devices such as: All IPads and IPhones, MacOS, Apple TV, etc. 
> - Newer versions of Swift commonly break compatibility with the older language versions,  meaning older Swift code must be refactored to support the new language update.
> - Earlier versions of Swift have performance issues, although speed has been improved in later versions of Swift.


