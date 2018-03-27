// https://www.hackerrank.com/challenges/30-regex-patterns/problem

import Foundation


// read the number of entries
var Entries = Int(readLine()!)!

// build the regex pattern
let EmailRegexPattern = "[_a-z0-9-]+(\\.[_a-z0-9-]+)*@(?i)gmail.com"

// using NSPredicate instead of a full blown regex matching
let EmailTest = NSPredicate(format:"SELF MATCHES %@", EmailRegexPattern)

var Names = [String]()

// read each line
for _ in 0..<Entries {
    let Entry = readLine()!.components(separatedBy: " ")

    // does it match the criteria? i.e is the email domain gmail.com?
    if  EmailTest.evaluate(with: Entry[1]) {
        Names.append(Entry[0])  // save the name
    }
}

// sort them
let SortedNames = Names.sorted(by: < )

// list them
for Name in SortedNames {
    print(Name)
}
