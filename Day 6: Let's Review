// https://www.hackerrank.com/challenges/30-review-loop/problem

import Foundation
import Darwin


let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
   
    // Print the even-indexed characters
    // Write your code here
    
    var i = 0
    var eString = ""
    var oString = ""
    
    for c in string {
        if (i%2 == 0) {
            eString += String(c)
        }
        else {
            oString += String(c)
        }
        i = i + 1
    }

    print(eString + " " + oString)
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
