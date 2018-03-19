// https://www.hackerrank.com/challenges/30-recursion/problem

import Foundation

// Enter your code here 
func factorial(of n: Int) -> Int{
    if n > 1 {
        return n * factorial(of: n - 1)
    } 
    else {
        return n
    }
}

var num = Int(readLine()!)!

print(factorial(of: num))



