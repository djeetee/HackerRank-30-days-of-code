// https://www.hackerrank.com/challenges/30-scope/problem

import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference : Int!
    
    // Write your code here
    
    init(a: [Int]) {
        self.elements = a
    }
    
    func computeDifference() -> Void {
        var diff: [Int] = []
        
        for i in 0..<self.elements.count {
            for j in (i+1)..<self.elements.count {
                diff.append(abs(self.elements[i] - self.elements[j]))
            }
        }
        
        self.maximumDifference = diff.max()
    }

} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)

