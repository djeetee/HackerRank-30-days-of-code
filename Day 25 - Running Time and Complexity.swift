// https://www.hackerrank.com/challenges/30-running-time-and-complexity/problem

import Foundation

var entries = Int(readLine()!)!
var number: Int

// basic iterative prime number checker
// this could be improved using various method most notably 
// using the Sieve of Eratosthenes.

func isPrime(n: Int) -> Bool {
    if n <= 1 { return false }
    
    // using the square root as a limit speeds up the function 
    // this way its runtime would be O(sqrt(n)) instead of O(n)
    let sRoot = Int(sqrt(Double(n)))
    var div = 2
    
    while div <= sRoot {
        if n % div == 0 { return false }  
        div += 1
    }
    return true
}


for _ in 0..<entries {
    number = Int(readLine()!)!
    isPrime(n: number) ? print("Prime") : print("Not prime")
}


