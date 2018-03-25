// https://www.hackerrank.com/challenges/30-sorting/problem

import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// Track number of elements swapped during a single array traversal
var numberOfSwaps = 0
    
for _ in 0..<n {
   
    for j in 0..<n - 1 {
        // Swap adjacent elements if they are in decreasing order
        if (arr[j] > arr[j + 1]) {
            swap(&arr[j], &arr[j + 1])
            numberOfSwaps += 1
        }
    }
    
    // If no elements were swapped during a traversal, array is sorted
    if numberOfSwaps == 0 {
        break;
    }
}

print("Array is sorted in \(numberOfSwaps) swaps.")
print("First Element: \(arr[0])")
print("Last Element: \(arr.last!)")