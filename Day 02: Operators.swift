// https://www.hackerrank.com/challenges/30-operators/problem

import Foundation

// Enter your code here. Read input from STDIN. Print output to STDOUT 

let mealCost = Double(readLine()!)!
let tipPercent = Double(readLine()!)!
let taxPercent = Double(readLine()!)!

print("The total meal cost is \(Int(round(mealCost + mealCost*tipPercent/100 + mealCost*taxPercent/100))) dollars.") 
