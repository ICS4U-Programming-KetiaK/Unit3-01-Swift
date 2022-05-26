//
// MyStringStack.swift
//
// Created by Ketia Gaelle Kaze
// Created on 2022-04-25
// version 1.0
// Copyright (c) 2022 IMH. All rights reserved.
//
// MyStringStack creates an empty constructor.
import Foundation

class MyStringStack {
  public var stack: [String]
  // empty constructor
  init() {
    stack = []
  }
  // function for the push method
  func push(string: String) {
    stack.append(string)
    print("\n\(string) added to the top of the stack.")
    print("The size of the stack is \(stack.count)")
  }
}

// creating an object for the string stack
var myStringStack = MyStringStack()

// main part
print("\nWelcome to the push method!")
print("\nIf you would like to push, enter PUSH, if you would like to exit, enter X: ", terminator: "")
let userChoice1 = readLine()!

// condition for when the user chooses push
if userChoice1.uppercased == "PUSH" {
  print("\nPlease enter a string: ", terminator: "")
  let userChoice2 = readLine()!
  myStringStack.push(string: userChoice2)

  // condition for when the user chooses to exit
} else if userChoice1.uppercased == "X" {
  print("\nProgram terminated.")
} else {
  print("\n\(userChoice1) is not among the choices.")
}
