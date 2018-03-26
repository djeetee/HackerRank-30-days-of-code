// https://www.hackerrank.com/challenges/30-binary-trees/problem

// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }
    
    // the class' queue
    var queue: [Node] = []

    // level-order traversal processes the root, 
    // followed by the children of the root (from left to right), 
    // followed by the grandchildren of the root (from left to right), etc...
    // in other words we traverse the tree top to bottom one level at a time.
    // The traversal uses a queue as a data structure to capture the path.
    
    func levelOrder(root: Node?) -> Void {
    	// Complete the function
        
        // should we stop the recursion?
        if root != nil {
            // drop the root into the queue
            enqueue(elem: root!)
            
            // as long as the queue is not empty
            while self.queue.count > 0 {
            
                // pick up a node
                let node = dequeue()
                
                // process it. In this case, we're just printing its data
                print(node.data, terminator: " ")
            
                // does it have a left branch? if so, drop that branch into the queue
                if node.left != nil {
                    enqueue(elem: node.left!)
                }
                
                // does it have a right branch? if so, drop that branch into the queue
                if node.right != nil {
                    enqueue(elem: node.right!)
                }
            }
        }
    } // End of levelOrder function
    
    // enqueues a character in the queue
    func enqueue(elem: Node) -> Void {
        queue.append(elem)
    }
    
    // returns the first element in the queue
    func dequeue() -> Node {
        return queue.remove(at: 0)
    }

} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)

