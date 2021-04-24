Stack operations
Stacks are useful, and also exceedingly simple. The main goal of building a stack is to enforce how you access your data. If you had a tough time with the linked list concepts, you’ll be glad to know that stacks are comparatively trivial.
There are only two essential operations for a stack: • push: Adding an element to the top of the stack. • pop: Removing the top element of the stack.
This means that you can only add or remove elements from one side of the data structure. In computer science, a stack is known as a LIFO (last-in first-out) data structure. Elements that are pushed in last are the first ones to be popped out.
Stacks are used prominently in all disciplines of programming. To list a few:
• iOS uses the navigation stack to push and pop view controllers into and out of view.
• Memory allocation uses stacks at the architectural level. Memory for local variables is also managed using a stack.
• Search and conquer algorithms, such as finding a path out of a maze, use stacks to facilitate backtracking.


Less is more
You may have wondered if you could adopt the Swift collection protocols for the stack. A stack’s purpose is to limit the number of ways to access your data, and adopting protocols such as Collection would go against this goal by exposing all the elements via iterators and the subscript. In this case, less is more!


Key points
• A stack is a LIFO, last-in first-out, data structure.
• Despite being so simple, the stack is a key data structure for many problems.
• The only two essential operations for the stack are the push method for adding elements and the pop method for removing elements.
