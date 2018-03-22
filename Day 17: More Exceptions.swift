// https://www.hackerrank.com/challenges/30-more-exceptions/problem

import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        guard n >= 0 && p >= 0 else {
            throw RangeError.NotInRange("n and p should be non-negative")
        }
        
        // calculate the power
        var ans = 1
    
        for _ in 0..<p  {
            ans = ans * n
        }
        return ans
        
    } // End of function power
} // End of class Calculator

let myCalculator = Calculator()
let t = Int(readLine()!)!

for _ in 0..<t {
    let np = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let n = np[0]
    let p = np[1]

    do {
        let ans = try myCalculator.power(n: n, p: p)
        print(ans)
    } catch RangeError.NotInRange(let errorMsg) {
        print(errorMsg)
    }
}