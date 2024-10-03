import Foundation

// Menu function to display options to user
func showMenu() {
    print("""
    please select an operation:
    1: Add
    2: Subtract
    3: Multiply
    4: Divide
    5: Exponent
    6: Remainder
    """)
}

var xValue: Double?
var yValue: Double?

print("please enter your two numbers.")
if let number1 = readLine(), let num1 = Double(number1) {
    xValue = num1
    print("number accepted")
}
else {
    print("error")
}
if let number2 = readLine(), let num2 = Double(number2) {
    yValue = num2
    print("number accepted")
}
else {
    print("error")
}

var calculate = true

if let x = xValue, let y = yValue {
    while calculate == true {
showMenu()
let menuSelection = readLine()
if menuSelection == "1" {
    func add() {
    let sum = x + y
    print(x, "+", y, "=", sum)
    }
    add()
    calculate = false
}
if menuSelection == "2" {
    func subtract() { 
    let difference = x - y
    print( x, "-", y, "=", difference)
    }
    subtract()
    calculate = false
}
if menuSelection == "3" {
    func multiply() {
    let product = x * y
    print( x, "*", y, "=", product)
    }
    multiply()
    calculate = false
}
if menuSelection == "4" {
print("The result is \(x / y).")   
calculate = false
}
if menuSelection == "5" {
let result = Int(pow(x, y))
print("The result is \(result).")    
calculate = false
}
if menuSelection == "6" {
print("The result is \(Int(x) % Int(y)).")
calculate = false
}
else {
    if calculate == true {
    print("Not a valid operation. Please select an operation using numbers 1-6.")
}
else {
}
}
}
}
else {
    print("error")
}








