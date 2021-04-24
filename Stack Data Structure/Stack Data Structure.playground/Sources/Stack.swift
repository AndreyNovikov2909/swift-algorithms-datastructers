import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    public init(_ elements: [Element]) {
        storage = elements
    }
}

// MARK: - Description

extension Stack: CustomStringConvertible {
    public var description: String {
        """
        ------Top------
        \(storage.map({ "\($0)" }).reversed().joined(separator: "\n"))
        ---------------
        """
    }
}

// MARK: - Operators

public extension Stack {
    var isEmpty: Bool {
        peek() == nil
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
    
    func peek() -> Element? {
        storage.last
    }
}

// MARK: - Literal array

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
