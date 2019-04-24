import Foundation

class Node {
    var doesAnyWordEndHere: Bool = false
    var children = [Character : Node]()
}

class Trie {
    let head = Node()
    
    func insert(_ word: String) {
        var itr = word.makeIterator()
        var currentNode = head
        
        while let c = itr.next() {
            if currentNode.children[c] == nil {
                currentNode.children[c] = Node()
            }
            currentNode = currentNode.children[c]!
        }
        currentNode.doesAnyWordEndHere = true
    }
    
    func search(_ word: String) -> Bool {
        if let node = _iterate(word) {
            return node.doesAnyWordEndHere
        }
        return false
    }
    
    func startsWith(_ prefix: String) -> Bool {
        return _iterate(prefix) != nil
    }
    
    private func _iterate(_ word: String) -> Node? {
        var itr = word.makeIterator()
        var currentNode = head
        
        while let c = itr.next() {
            guard let child = currentNode.children[c] else {
                return nil
            }
            currentNode = child
        }
        return currentNode
    }
}
