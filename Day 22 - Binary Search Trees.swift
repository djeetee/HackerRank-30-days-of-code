// https://www.hackerrank.com/challenges/30-binary-search-trees/problem

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
    
    
    // Calculates the height of BST.
    // A BST of one node (i.e root node) has a height of 0
    // The height of an empty subtree is -1
    // the height of each node is 1+ the maximum height of its subtrees

    func getHeight(root: Node?) -> Int {
    	// Complete the function
        
        // should we stop the recursion?
        guard root != nil else { return -1 }
        
        // calculate the left and right branches. the +1 is to account for the node we're at
        let leftHeight = getHeight(root: root!.left) + 1
        let rightHeight = getHeight(root: root!.right) + 1
        
        return max(leftHeight, rightHeight)
    
    } // End of getHeight function

} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))

