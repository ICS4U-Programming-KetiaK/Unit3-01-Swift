//
// MyIntStack.swift
//
// Created by Ketia Gaelle Kaze
// Created on 2022-04-25
// version 1.0
// Copyright (c) 2022 IMH. All rights reserved.
//
// Program implements the push method.
import Foundation

class MyIntStack {
  public var stack: [Int]
  // empty constructor
  init() {
    stack = []
  }
  // function for the push method
  func push(num: Int) {
    stack.append(num)
    print("\n\(num) added to the top of the stack.")
    print("The size of the stack is \(stack.count)")
  }
}

// creating an object for the integer stack
var myIntStack = MyIntStack()

// main part
print("\nWelcome to the push method!")
print("\nIf you would like to push, enter PUSH, if you would like to exit, enter X: ", terminator: "")
let userChoice1 = readLine()!

// condition for when the user chooses push
if userChoice1.uppercased == "PUSH" {
  print("\nPlease enter an integer: ", terminator: "")
  let userChoice2 = readLine()!
  let userChoice2Int = Int(userChoice2) ?? 23487362987928
  if userChoice2Int != 23487362987928 {
    myIntStack.push(num: userChoice2Int)
    // condition for when the user enters an invalid input
  } else {
    print("\n\(userChoice2) is not a valid integer.")
  }
  // condition for when the user chooses to exit
} else if userChoice1.uppercased == "X" {
  print("\nProgram terminated")
  // condition for when the user enters an invalid choice
} else {
  print("\n\(userChoice1) is not among the choices.")
}
