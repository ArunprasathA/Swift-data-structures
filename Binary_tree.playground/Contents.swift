

class BinaryNode<Element> {
    var value:Element
    
    var leftNode: BinaryNode?
    var rightNode: BinaryNode?
    
    init(_ value: Element) {
        self.value = value
    }
}

extension BinaryNode {
    
    func traversPreOrder(visit: (Element) -> Void) {
        visit(value)
        leftNode?.traversPreOrder(visit: visit)
        rightNode?.traversPreOrder(visit: visit)
    }
    
    func traversPostOrder(visit: (Element) -> Void) {
        leftNode?.traversPostOrder(visit: visit)
        rightNode?.traversPostOrder(visit: visit)
        visit(value)
    }
    
    func traversInOrder(visit: (Element) -> Void) {
        leftNode?.traversInOrder(visit: visit)
        visit(value)
        rightNode?.traversInOrder(visit: visit)
    }
}


/*
            10
    9              2

1       3     4         8
 
 
 In order output
 
 1  9   3   10  4   2   8
 
 
 Post order
 
 
1  3   9   4   8   2   10
 
 
Pre order
 
 10 9   1   3   2   4   8
 
 
 */




let ten = BinaryNode(10)
let nine = BinaryNode(9)
let one = BinaryNode(1)
let three = BinaryNode(3)
let two = BinaryNode(2)
let four = BinaryNode(4)
let eight = BinaryNode(8)

ten.leftNode = nine
ten.rightNode = two
nine.leftNode = one
nine.rightNode = three
two.leftNode = four
two.rightNode = eight

ten.traversInOrder {
    print($0)
}

print("***********************")

ten.traversPostOrder{
    print($0)
}

print("********************")

ten.traversPreOrder {
    print($0)
}
