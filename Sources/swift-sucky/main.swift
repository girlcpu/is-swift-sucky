// The Swift Programming Language
// https://docs.swift.org/swift-book

// print("I didn't get any IntelliSense help here");
// oh i forgot the extension pack
// ok i had to wait like 10 seconds for the first suggestion but we good
// print("Hello, Chungusville!")
// expressions are not allowed at top level
// i thought you can write scripts in swift too?
// maybe its a target issue in package.swift
// changed it to executable and still no top level? i really thought we had that
// ok so then what do i need to do? main fn?

// public func main() {
//     print("Hello!")
// }

// no errors with mew public func main()
// lets try to run this
// oh apparently an executable target requires a main.swift file
// i can do that
// so i should be able to call that top level

// main()

// IT PRINTED HELLO, NICE

// what else should I make it do? read from stdin?
// good old calculator

// i think print() does println() newline
// is there a regular print or prompt builtin?

// import Foundation

// nothing useful coming in from Foundation
// time to start searching the web

// ok nice we have readLine()
// probably don't even need Foundation, commenting

// import Darwin
// haha i left this in from math testing
// BYE DARWIN can't wait to need you in 5 minutes

print("Calculator")
print("EQUATION = ", terminator: "")

guard let inputExpression = readLine() else {
    fatalError("Did not receive an expression")
}

// this is not stripping the non-digit non-math chars from the input? wtf is that about)
// ITS JUST MATCHING AS ONE BIG BLOB
// ok refactored to not worry about the match output but still whats goin on?

let invalidExpression = /[^\d\+\-\/\*]+/
let isExpressionValid = !inputExpression.contains(invalidExpression)

if !isExpressionValid {
    fatalError("Invalid expression")
}

let segments = inputExpression.reduce<[String]>([]) { partialResult, Character in
    []
}

print("TEST: You submitted the expression: \(inputExpression)")

// just flowed all of this out, i think this is smoother than before
// too much kotlin lately, keep trying to write "fun"
// bonus points to the builtin formatter, it is not fucking with my comments at all

// these should tidy up the expression code above

func add(a: Float, b: Float) -> Float {
    a + b
}

func sub(a: Float, b: Float) -> Float {
    a - b
}

func mult(a: Float, b: Float) -> Float {
    a * b
}

func div(a: Float, b: Float) -> Float {
    a / b
}
