// https://www.hackerrank.com/challenges/30-generics/problem

struct Printer<T> {
	/**
	*    Name: printArray
	*    Print each element of the generic array on a new line. Do not return anything.
	*    @param A generic array
	**/
	
	// Write your code here

	// the printArray() takes any array and prints its elements
	func printArray(array: [T]) -> Void {
		for item in array {
			print(item)
		}
	}
}

var n = Int(readLine()!)!

var intArray = Array(repeating: 0, count: n)
for i in 0...n - 1 {
	intArray[i] = Int(readLine()!)!
}

n = Int(readLine()!)!

var stringArray = Array(repeating: "", count: n)
for i in 0...n - 1 {
	stringArray[i] = readLine()!
}

Printer<Int>().printArray(array: intArray)
Printer<String>().printArray(array: stringArray)