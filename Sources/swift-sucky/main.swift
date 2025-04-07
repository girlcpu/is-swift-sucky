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

import Darwin

print("Calculator")
print("EQUATION = ", terminator: "")

guard let expression = readLine() else {
    fatalError("Did not receive an expression")
}

let validExpressionRegex = /[\d+-\/*]/
let cleanExpression = expression.matches(of: validExpressionRegex).compactMap { match in
    match.output
}.joined(separator: "")

if cleanExpression.count <= 0 {
    fatalError("Invalid expression")
}

print("TEST: You submitted the expression: \(expression)")

// just flowed all of this out, i think this is smoother than before
