print("Using a stack")

var stack = Stack<Int>()

stack.push(0)
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

print(stack)

if let popedElement = stack.pop() {
    assert(popedElement == 4)
    print("Popped element: \(popedElement)")
}

stack.pop()
stack.pop()
stack.pop()
stack.pop()

print("Stack is empty: \(stack.isEmpty)")
print()


print("Initializing a stack from an array")

let array = ["A", "B", "C", "D"]
var secondStack = Stack(array)

secondStack.push("E")

print(secondStack)

stack.pop()

print()
print("Initializing a stack from an array literal")

var thirdStack: Stack<Int> = [0, 1, 2, 3, 4, 5, 6, 7]
thirdStack.push(8)

print(stack)

if let popedElement = stack.pop() {
    assert(popedElement == 8)
    print("Popped element: \(popedElement)")
}


// MARK: - Challange

/*
 Challenge 1: Reverse an Array
 Create a function that prints the contents of an array in reversed order.
 */

/*
 Challenge 2: Balance the parentheses
 Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced. For example:
 
 // 1
 h((e))llo(world)() // balanced parentheses
 // 2
 (hello world // unbalanced parentheses
 */


// MARK: - Solution


let testArray1 = [1, 2, 3, 4, 5]

func printReverce<T>(_ array: [T]) {
    var stack = Stack<T>()
    
    for value in array {
        stack.push(value)
    }
    
    while let value = stack.pop() {
        print(value)
    }
}

printReverce(testArray1)


func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }
    
    return stack.isEmpty
}

func checkParenthesesAnyWhere(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for charcter in string.enumerated() {
        if charcter.element == "(" {
            stack.push(charcter.element)
        } else if charcter.element == ")" {
            if stack.isEmpty {
                if charcter.offset == (string.count - 1) {
                    // last element and no values in stack
                    return false
                } else {
                    continue
                }
                
            } else {
                // stack containts (
                return true
            }
        }
    }
    
    return false
}

print(checkParentheses("He(llo) world"))
print(checkParentheses(")))(() world"))
print(checkParentheses("Hello) world"))

print()

print(checkParenthesesAnyWhere("He(llo) world"))
print(checkParenthesesAnyWhere(")))(() world"))
print(checkParenthesesAnyWhere("Hello)( world"))
