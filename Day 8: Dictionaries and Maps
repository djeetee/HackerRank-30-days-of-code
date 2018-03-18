// https://www.hackerrank.com/challenges/30-dictionaries-and-maps/problem

import Foundation

// Enter your code here. Read input from STDIN. Print output to STDOUT
var entries = Int(readLine()!)!

var pBook = [String : String]()
for _ in 0..<entries {
    let input = readLine()!
    let bookEntry = input.components(separatedBy: " ")
    pBook[bookEntry[0]] = bookEntry[1]
}


func phoneNumber(forName: String) -> String {
    if let val = pBook[forName] {
        return forName + "=" + val
    }
    else {
        return "Not found"
    }
}

while true {
    if let name = readLine() {
        print(phoneNumber(forName: name))
    }
    else {
        break
    }
}


