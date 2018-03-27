// https://www.hackerrank.com/challenges/30-nested-logic/problem

import Foundation

// Read the Due Date and map it into an array
var DueDateArr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// Read the Return Date and map it into an array
var ReturnDateArr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

struct date {
    var day: Int
    var month: Int
    var year : Int
}

// to make referencing things clearer...
var ReturnDate = date(day: DueDateArr[0], month: DueDateArr[1], year: DueDateArr[2])
var DueDate = date(day: ReturnDateArr[0], month: ReturnDateArr[1], year: ReturnDateArr[2])

var Fine = 0
if (ReturnDate.year > DueDate.year) {
    Fine = 10000
} else {
    if (ReturnDate.year == DueDate.year) && (ReturnDate.month > DueDate.month) {
        Fine = 500 * (ReturnDate.month - DueDate.month)
    } else {
        if (ReturnDate.year == DueDate.year) && (ReturnDate.month == DueDate.month) && (ReturnDate.day > DueDate.day) {
            Fine = 15 * (ReturnDate.day - DueDate.day)
        } else {
            Fine = 0
        }
    }
}

print(Fine)
