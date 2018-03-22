// https://www.hackerrank.com/challenges/30-binary-numbers/problem

import Foundation

// Enter your code here 

var n = Int(readLine()!)!

var binValue = ""
let binSlots = 32

func toThePower(number: Int, power: Int) -> Int {
    var ans = 1
    
    for _ in 0..<power  {
        ans = ans * number
    }
    return ans
}

var inSequence = false
var maxCount = 0
var cCount = 0

for i in stride(from: binSlots, through: 0, by: -1) {
    let pCalc = toThePower(number: 2, power: i)

    if n >= pCalc {
        inSequence = true
        binValue += "1"
        cCount += 1
        n = n - pCalc
    }
    else {
        binValue += "0"
        if inSequence { // we were already counting ones and hit a zero
            maxCount = cCount > maxCount ? cCount : maxCount
            inSequence = false
            cCount = 0
        }
    }
}
if inSequence { // we were already counting ones and processed the entire input
    maxCount = cCount > maxCount ? cCount : maxCount
}

print(maxCount)

