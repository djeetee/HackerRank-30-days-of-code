// https://www.hackerrank.com/challenges/30-arrays/problem

import Foundation

// number of elements
let n = Int(readLine()!)!

// read array
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// iterate over the array in reverse order and print the elements separated by space
for i in stride(from: arr.count - 1, through: 0, by: -1) {
    print(String(arr[i]), terminator: (i > 0 ? " " : ""))
}
