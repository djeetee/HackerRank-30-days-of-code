// https://www.hackerrank.com/challenges/30-linked-list/problem

import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    
    // set up a new Node and initialize it
    let node = Node(data: data)
    
    // check if this is not the first node in the list
    if var lastHead = head {    // it's not
        // scan the list to find the last node
        while lastHead.next != nil {
            lastHead = lastHead.next!
        }
        lastHead.next = node
        return head
    } else {    // first not in the list
        return node
    }
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)