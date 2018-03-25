// https://www.hackerrank.com/challenges/30-queues-stacks/problem

class Solution {
    //Write your code here
    
    var queue: [Character] = []
    var stack: [Character] = []
    
    // pushes a character onto a stack
    func pushCharacter(c: Character) -> Void {
        stack.append(c)
    }
    
    // enqueues a character in the queue instance variable
    func enqueueCharacter(c: Character) -> Void {
        queue.append(c)
    }
    
    // returns the character at the top of the stack
    func popCharacter() -> Character {
        return stack.removeLast()
    }
    
    // returns the first character in the queue
    func dequeueCharacter() -> Character {
        return queue.remove(at: 0)
    }
}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for c in s.characters {
    obj.pushCharacter(c: c)
    obj.enqueueCharacter(c: c)
}

var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.characters.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}