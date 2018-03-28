// https://www.hackerrank.com/challenges/30-bitwise-and/problem

// Another weird and useless exercise...

import Foundation

let Entries = Int(readLine()!)!

for _ in 0..<Entries {
    let Case = readLine()!.components(separatedBy: " ").map({ Int($0) })
    let (n, k) = (Case[0]!, Case[1]!)

    ((k - 1) | k) <= n ? print(k-1) : print(k-2)
}
