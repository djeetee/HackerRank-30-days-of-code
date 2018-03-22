// https://www.hackerrank.com/challenges/30-2d-arrays/problem

import Foundation

// Enter your code here 
let (mHeight, mWidth) = (6, 6)
let hgDim = 3
let hgPerLine = 4

// create a 2D array of H x W
var arr = Array(repeating: Array(repeating: 0, count: mWidth), count: mHeight)

// read the input and break into string then convert into Int
var sValue = Array(repeating: "", count: mWidth)
for i in 0..<mHeight {
    sValue = readLine()!.components(separatedBy: " ")
    arr[i] = sValue.flatMap { Int($0) }
}

var hgTemplates = [[0,0], [0,1], [0,2], [1,1], [2,0], [2,1], [2,2]]

var hgValue = 0
var hgValuesArray: [Int] = []

// top to bottom
for i in stride(from: 0, to: mHeight - (hgDim - 1), by: 1) {
    // left to right
    for j in stride(from: 0, to: mWidth - (hgDim - 1), by: 1) {
        // Calculate the sum of an hourglass
        var hgValue = 0
        for k in 0..<hgTemplates.count {
            hgValue += arr[ i + hgTemplates[k][0] ][ j + hgTemplates[k][1] ]
        }
        // drop it into an array
        hgValuesArray.append(hgValue)
    }
}

print(hgValuesArray.max()!)
