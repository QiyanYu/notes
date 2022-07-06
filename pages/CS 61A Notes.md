title:: CS 61A Notes

- [Composing Programs - Textbook](https://composingprograms.com/)
- All lectures, labs, discussions, homework and projects are from UC Berkeley [CS61A sp20](https://inst.eecs.berkeley.edu/~cs61a/sp20/)
- # Chapter 1: Building Abstractions with Functions
	- ## 1.1 Getting Started
	  collapsed:: true
		- #### Expressions & Statements
			- Computer programs consist of instructions of either:
				- 1. Compute some value  
				  					2. Carry out some action
				- Statements typically describe actions.
				- Expressions typically describe computations.
		- #### Functions
			- Functions encapsulate logic that manipulates data.
		- #### Objects
			- An object seamlessly bundles together data and the logic that manipulates that data.
		- #### Some guiding principles of debugging are:
			- 1. **Test incrementally:** Every well-written program is composed of small, modular components that can be tested individually. Try out everything you write as soon as possible to identify problems early and gain confidence in your components.  
			  				2. **Isolate errors:** An error in the output of a statement can typically be attributed to a particular modular component. When trying to diagnose a problem, trace the error to the smallest fragment of code you can before trying to correct it.
			  				3. **Check your assumptions:** Interpreters do carry out your instructions to the letter — no more and no less. Their output is unexpected when the behavior of some code does not match what the programmer believes (or assumes) that behavior to be. Know your assumptions, then focus your debugging effort on verifying that your assumptions actually hold.
			  				4. **Consult others:** You are not alone! If you don't understand an error message, ask a friend, instructor, or search engine. If you have isolated an error, but can't figure out how to correct it, ask someone else to take a look. A lot of valuable programming knowledge is shared in the process of group problem solving.
	- ## 1.2 Elements of Programming
	  collapsed:: true
		- #### Execution procedure for `def` statements:
			- 1. Create a function with signature *<name>(<formal parameters>)*  
			  				2. Set the body of that function to be everything indented after the first line (only set not execute)
			  				3. Bind *<name>* to that function in the current frame.
	- ## 1.3 Defining New Functions
	  collapsed:: true
		- #### Procedure for calling/applying user-defined functions:
			- 1. Add a local frame, forming a *new* environment.  
			  				2. Bind the function's formal parameters to its arguments in that frame.
			  				3. Execute the body of the function in that new environment.
		- A function's *signature* has all the information needed to create a local frame.
		- #### Most important two things:
			- An environment is a sequence of frames.
			- A name evaluates to the value bound to that name in the earliest frame of the current environment in which that name is found.
		- Assignment is our simplest means of *abstraction*.
		- The possibility of binding names to values and later retrieving those values by name means that the interpreter must maintain some sort of memory that keeps track of the names, values, and bindings. This memory is called an environment.
		- #### Aspects of a functional abstraction:
			- The *domain* of a function is the set of arguments it can take.
			- The *range* of a function is the set of value it can return.
			- The *intent* of a function is the relationship it computes between inputs and outputs.
	- ## 1.4 Designing Functions
	  collapsed:: true
		- #### What makes a good function? #software-engineer
			- Each function should have exactly one job.
			- Don't repeat yourself is a central tenet of software engineering.
			- Functions should be defined generally.
		- #### Documentation
			- In Python, a function definition will often include documentation describing the function, called a *docstring*.
			- `>>> help(function_name)` will show its docstring.
	- ## 1.5 Control
	  collapsed:: true
		- Python includes several false values, including 0, None, and the boolean value False. All other numbers are true values.
		- Functions that perform comparisons and return boolean values typically begin with is, not followed by an underscore (e.g., *isfinite, isdigit, isinstance*, etc.).
	- ## 1.6 Higher-Order Functions #HOF
	  collapsed:: true
		- ### Functions are first-class:
			- Functions can be manipulated as values in our programming language.
		- ### Higher-order function:
			- A function that takes a function as an argument value or returns a function as a return value.
			- Express general methods of computation.
			- Remove repetition from programs.
			- Separate concerns among functions.
		- ### Nested Definitions
			- We can use functions as general methods:
				- ```python
				  def imporve(update, close, guess=1):
				    	while not close(guess):
				        	guess = update(guess)
				      return guess
				    
				  def golden_update(guess):
				    	return 1/guess + 1
				    
				  def square_close_to_successor(guess):
				    	return approx_eq(guess * guess, guess + 1)
				    
				  def approx_eq(x, y, tolerance=1e-15):
				    	return abs(x - y) < tolerance
				    
				  phi = improve(golden_update, square_close_to_successor)
				  ```
			- Cons of this approach:
				- 1. The global frame becomes cluttered with names of small functions, which must all be unique.
				  2. Users are constrained by particular function signatures.
			- We can use nested definitions to overcome these inconveniences.
			- An Example for computing the square root of a number.
				- ```python
				  def average(x, y):
				    	return (x + y) / 2
				  ```
				- This two-argument update function is incompatible with `improve`
				- ```python
				  def sqrt(a):
				    	def sqrt_update(x):
				        	return average(x, a/x)
				      def sqrt_close(x):
				        	return approx_eq(x * x, a)
				      return improve(sqrt_update, sqrt_close)
				  ```
		- ### [Example: Newton's Method](https://composingprograms.com/pages/16-higher-order-functions.html#example-newton-s-method)
		- ### Currying
			- We can use higher-order functions to convert `f(x, y)` to `g(x)(y)`
			- ```python
			  def curried_pow(x):
			    	def h(y):
			        	return pow(x, y)
			      return h
			  ```
			- Currying is useful when we require a function that takes in only single argument.
			- ```python
			  def map_to_range(start, end, f):
			    	while start < end:
			        	print(f(start))
			          start = start + 1
			          
			  map_to_range(0, 10, curried_pow(2))
			  ```
			- Using lambda:
				- ```python
				  def curry2(f):
				    	def g(x):
				        	def h(y):
				            	return f(x, y)
				          return h
				      return g
				    
				  "Using nested lambda"
				  curry2 = lambda f: lambda x: lambda y: f(x, y)
				  ```
		- ### Lambda Expressions
			- Lambda expressions are not common in Python, but important in general.
			- Lambda expressions in Python cannot contain statements at all.
		- ### Lambda Expressions v.s. `def` Statements
			- Only the `def` statement gives the function an intrinsic name.
		- ### Function Decorators
			- Python provides special syntax to apply higher-order functions as part of executing a `def` statement, called a decorator.
			- ```python
			  def trace(fn):
			    	def wrapped(x):
			        	print('->', fn, '(', x, ')')
			          return fn(x)
			      return wrapped
			    
			  @trace
			  def triple(x):
			    	return 3 * x
			  ```
			- This decorator is equivalent to:
			- ```python
			  def triple(x):
			    	return 3 * x
			    
			  triple = trace(triple)
			  ```
		- ### Why using Higher-order functions?
			- {{video https://www.youtube.com/watch?v=TC_JcE42R2s&list=PL6BsET-8jgYVi-r2ys_l0i-lZFOE9k3TL&index=3}}
		- ### Return
			- TODO  inverse function
				- ```python
				  def search(f):
				    	x = 0
				      while not f(x):
				  		x += 1
				      return x
				    
				  def is_three(x):
				    	return x == 3
				    
				  def square(x):
				    	return x * x
				    
				  def positive(x):
				    	return max(0, square(x) - 100)
				    
				  def inverse(f):
				    	"""Return g(y) such that g(f(x)) ->x"""
				      return lambda y: search(lambda x: f(x) == y)
				  ```
				- ```bash
				  >>> sqrt = inverse(square)
				  >>> square(16)
				  256
				  >>> sqrt(256)
				  16
				  ```
		- ### Self-Reference
			- **Self-reference** refers to a particular design of HOF, where a function eventually returns itself.
			- ```python
			  def print_all(x):
			    	print(x)
			      return print_all
			  ```
			- Self-referencing functions will oftentimes employ helper functions that reference the outer function, such as the example below.
			- ```python
			  def print_sums(n):
			  	print(n)
			      def next_sum(k):
			        	return print_sums(n+k)
			      return next_sum
			    
			  print_sums(1)(3)(5)
			  ```
		- ### Design
			- Naming Tips:
				- `n, k, i` - Usually integers
				- `x, y, z` - Usually real numbers
				- `f, g, h` - Usually functions
		- ### TODO hw02 q3 q4
			- [hw02 q3 q4](https://github.com/QiyanYu/UCB_CS61A/blob/main/hw02/hw02.py)
			- [Questions description](https://inst.eecs.berkeley.edu/~cs61a/sp20/hw/hw02/)
		- ### Disc02 Higher-Order Functions, Self Reference
			- ![disc02.pdf](../assets/disc02_1655417678490_0.pdf)
		- ### Guerrilla 00: Higher-Order Functions, Environment Diagrams, Control
			- ![guer00.pdf](../assets/guer00_1655443645108_0.pdf)
			- `is_palindrome` #algorithm #palindrome
				- ```python
				  def is_palindrome(n):
				    	x, y = n, 0
				      f = lambda: y * 10 + x % 10
				      while x > 0:
				        	x, y = x // 10, f()
				      return y == n
				  ```
	- ## 1.7 Recursive Functions
	  collapsed:: true
		- ### Definition:
			- A function is called *recursive* if the body of that function calls itself, either directly or indirectly.
		- ### The anatomy of a Recursive Function
			- The `def` statement header is similar to other functions.
			- Conditional statements check for base cases.
			- Base cases are evaluated without recursive calls.
			- Recursive cases are evaluated with recursive calls.
		- ### Three common steps in a recursive definition:
			- 1. Figure out your base case: The base case is usually the simplest input possible to the function.
			- 2. Make a recursive call with a simpler argument.
			- 3. Use your recursive call to solve the full problem.
		- ### Some general tips:
			- Paradoxically, to write a recursive function, you must assume that the function is fully functional before you finish writing it; this is called the_recursive leap of faith_.
			- Consider how you can solve the current problem using the solution to a simpler version of the problem. The amount of work done in a recursive function can be deceptively little: remember to take the leap of faith and_trust the recursion_to solve the slightly smaller problem without worrying about how.
			- Think about what the answer would be in the simplest possible case(s). These will be your base cases - the stopping points for your recursive calls. Make sure to consider the possibility that you're missing base cases (this is a common way recursive solutions fail).
			- It may help to write an iterative version first.
		- One way to go understand recursion is to separate out two things: "internal correctness" and not running forever.
		- ### Sum Digits #algorithm #recursion
			- ```python
			  def split(n):
			    	return n // 10, n % 10
			    
			  def sum_digits(n):
			    	if n < 10:
			        	return n
			      else:
			        	all_but_last, last = split(n)
			          return sum_digits(all_but_last) + last
			  ```
		- ### Iteration vs. Recursion
			- Iteration is a special case of recursion.
		- ### Mutual Recursion
			- Luhn Algorithm: #recursion #mutual-recursion
				- ```python
				  def luhn_sum(n):
				  	if n < 10:
				        	return n
				      else:
				        	all_but_last, last = split(n)
				          return luhn_sum_double(all_but_last) + last
				        
				  def luhn_sum_double(n):
				    	all_but_last, last = split(n)
				      luhn_digit = sum_digits(2 * last)
				      if n < 10:
				        	return luhn_digit
				      else:
				        	return luhn_sum(all_but_last) + luhn_digit
				  ```
			- Another example of mutual recursion:
				- Consider a two-player game. The players take turns, removing either one or two pebbles from the table, and the player who removes the final pebble wins.
				- Alice always removes a single pebble.
				- Bob removes two pebbles if an even number of pebbles is on the table, and one otherwise.
				- ```python
				  def play_alice(n):
				    	if n == 0:
				        	print("Bob wins!")
				      else:
				        	play_bob(n-1)
				          
				  def play_bob(n):
				    	if n == 0:
				        	print("Alice wins!")
				      elif is_even(n):
				        	play_alice(n-2)
				      else:
				        	play_alice(n-1)
				  ```
		- ### Recursion and Iteration
			- Converting recursion to iteration:
				- **Can be tricky:** Iteration is a special case of recursion.
				- **Idea:** Figure out what state must be maintained by the iterative function.
				- Sum digits using iteration:
					- ```python
					  def sum_digits_iter(n):
					    	digit_sum = 0
					      while n > 0:
					        	n, last = split(n)
					          digit_sum += last
					      return digit_sum
					  ```
		- ### Cascade and Inverse Cascade: #recursion
			- ```python
			  def cascade(n):
			    	"""
			  	>>> cascade(1234)
			      1234
			      123
			      12
			      1
			      12
			      123
			      1234
			      """
			      if n < 10:
			        	print(n)
			      else:
			        	print(n)
			          cascade(n//10)
			          print(n)
			          
			          
			  def inverse_cascade(n):
			    	"""
			      >>> inverse_cascade(1234)
			      1 # grow
			      12
			      123
			      1234 # print
			      123 # shrink
			      12
			      1
			      """
			      grow(n)
			      print(n)
			      shrink(n)
			      
			  def f_then_g(f, g, n):
			    	if n: # in Python, all non-zero integers are True
			        	f(n)
			          g(n)
			          
			  grow = lambda n: f_then_g(grow, print, n//10)
			  shrink = lambda n: f_then_g(print, shrink, n//10)
			  ```
		- ### Tree Recursion
			- A function calls itself more than once.
			- ![image.png](../assets/image_1656113915668_0.png){:height 234, :width 592}
			- **Generally, tree recursion is effective when you want to explore multiple possibilities or choices at a single step.** In these types of problems, you make a recursive call for each choice or for a group of choices. Here are some examples:
				- Given a list of paid tasks and a limited amount of time, which tasks should you choose to maximize your pay? This is actually a variation of the [Knapsack](https://en.wikipedia.org/wiki/Knapsack_problem) problem, which focuses on finding some optimal combination of different items.
				- Suppose you are lost in a maze and see several different paths. How do you find your way out? This is an example of path finding, and is tree recursive because at every step, you could have multiple directions to choose from that could lead out of the maze.
				- Your dryer costs $2 per cycle and accepts all types of coins. How many different combinations of coins can you create to run the dryer? This is similar to the [partitions](http://composingprograms.com/pages/17-recursive-functions.html#example-partitions) problem from the textbook.
		- ### Disc 03: Recursion #recursion #recap
			- ![disc03.pdf](../assets/disc03_1655858888105_0.pdf)
			- #### Q4: Is Prime
			  collapsed:: true
				- ```python
				  def is_prime(n):
				    	"""Returns True if n is a prime number and False otherwise.
				      	
				      >>> is_prime(2)
				      True
				      >>> is_prime(16)
				      False
				      """
				      def helper(i):
				        	if i > (n ** 0.5): # Could replace with i == n
				            	return True
				          elif n % i == 0:
				            	return False
				          else:
				            	return helper(i + 1)
				      return helper(2) # this is the same as k = 2
				  ```
			- #### Q5: Write a procedure *merge(n1, n2)* which takes numbers with digits in decreasing order and returns a single number with all of the digits of the two, in decreasing order. treat 0 as having no digits.
			  collapsed:: true
				- ```python
				  def merge(n1, n2):
				    	"""
				      Merges two numbers
				      >>>merge(31, 41)
				      4321
				      >>> merge(21, 0)
				      21
				      >>> merge(21, 31)
				      3211
				      """
				      if n1 == 0:
				        	return n2
				      elif n2 == 0:
				        	return n1
				      elif n1 % 10 < n2 % 10:
				        	return merge(n1 // 10, n2) * 10 + n1 % 10
				      else: 
				        	return merge(n1, n2 // 10) * 10 + n2 % 10
				  ```
		- ### HW 03 #recursion #recap
			- [HW03-GitHub](https://github.com/QiyanYu/UCB_CS61A/blob/main/hw03/hw03.py)
			- #### Q2: Ping-pong
			  collapsed:: true
				- ![image.png](../assets/image_1656198751231_0.png)
			- #### Q3: Count change
			  collapsed:: true
				- Given a positive integer `total` , a set of coins makes change for `total` if the sum of the values of the coins is `total` . For example, the following sets make change for `7` :
					- 7 1-cent coins
					- 5 1-cent, 1 2-cent coins
					- 3 1-cent, 2 2-cent coins
					- 3 1-cent, 1 4-cent coins
					- 1 1-cent, 3 2-cent coins
					- 1 1-cent, 1 2-cent, 1 4-cent coins
				- Second solution, using "linked list":
				  id:: 62be4c64-9569-4d27-b8c4-b841281fb083
					- [linked list](https://composingprograms.com/pages/23-sequences.html#linked-lists)
					- ```python
					  def partitions(n,m):
					    	"""Return a linked list of partitions of n using parts of up
					      to m. Each partition is represented as a linked list.
					      """
					      if n == 0:
					        	return link(empty, empty)
					      elif n < 0 or m == 0:
					        	return empty
					      else:
					        	using_m = partitions(n-m, m)
					          with_m = apply_to_all_link(lambda s: link(m, s), using_m)
					          without_m = partitions(n, m-1)
					          return extend_link(with_m, without_m)
					        
					  def print_partitions(n, m):
					    	lists = partitions(n, m)
					      strings = apply_to_all_link(lambda s: join_link(s, " + "), lists)
					      print(join_link(strings, "\n"))
					  ```
			- #### Q6: Anonymous factorial
			  collapsed:: true
				- To write a recursive function, we have always given it a name using a `def` or assignment statement so that we can refer to the function within its own body. In this question, your job is to define fact recursively without giving it a name!
		- ### Lab 04 #recursion #recap
			- [lab 04](https://inst.eecs.berkeley.edu/~cs61a/sp20/lab/lab04/)
			- [lab04-GitHub](https://github.com/QiyanYu/UCB_CS61A/blob/main/lab04/lab04.py)
			- #### Q5: Maximum Subsequence
				- There are two key insights for this problem
					- You need to split into the cases where the ones digit is used and the one where it is not. In the case where it is, we want to reduce `l` since we used one of the digits, and in the case where it isn't we do not.
					- In the case where we are using the ones digit, you need to put the digit back onto the end, and the way to attach a digit `d` to the end of a number `n` is `10 * n + d` .
		- ### Disc 04: Tree Recursion #recursion #recap
			- ![disc04-sol.pdf](../assets/disc04-sol_1656437137988_0.pdf)
			- Q1, Q2: a tree recursive problem also involves iteration
			- **Q5: Max Product**
				- ```python
				  def max_products(s):
				    	"""Return the maximum product that can be formed using
				      non-consecutive elements of s.
				      >>> max_product([10, 3, 1, 9, 2]) # 10 * 9
				      90
				      >>> max_product([5, 10, 5, 10, 5]) # 5 * 5 * 5
				      125
				      >>> max_product([])
				      1
				      """
				      if s == []:
				        	return 1
				      else:
				        	return max(s[0] * max_product([2:]), max_product(s[1:]))
				  ```
				- If we include the current number, we cannot use the adjacent number.
				- if we don't use the current number, we try the adjacent number.
			- last question, **Whole Numbers**
				- *hole number:*
				- ```python
				  def check_hole_number(n):
				    	"""
				      >>> check_hole_number(123)
				      False
				      >>> check_hole_number(3241968)
				      True
				      >>> check_hole_number(3245968)
				      False
				      """
				      if n // 10 == 0:
				        	return True
				      return ((n//10) % 10) < (n % 10) and ((n//10) % 10) < ((n//100) % 10) \
				    		and check_hole_number(n//100)
				  ```
				- *mountain number:*
				- ```python
				  def check_mountain_number(n):
				    	"""
				      >>> check_mountain_number(103)
				      False
				      >>> check_mountain_number(153)
				      True
				      >>> check_mountain_number(3241968)
				      False
				      >>> check_mountain_number(2345986)
				      True
				      """
				      def helper(x, is_increasing):
				        	if x // 10 == 0:
				            	return True
				          if is_increasing and (x % 10) < ((x // 10) % 10):
				            	return helper(x // 10, is_increasing)
				          return (x % 10) > ((x // 10) % 10) and helper(x // 10, False)
				      return helper(n, True)
				  ```
- # Chapter 2: Building Abstractions with Data
	- ## 2.1 Introduction
	  collapsed:: true
		- ### Divisors
			- ```python
			  def divisors(n):
			    	return [1] + [x for x in range(2, n) if n % x == 0]
			  ```
		- ### Execute String
			- ```python
			  >>> 'curry = lambda f: lambda x: lambda y: f(x, y)'
			  'curry = lambda f: lambda x: lambda y: f(x, y)'
			  >>> exec('curry = lambda f: lambda x: lambda y: f(x, y)')
			  >>> curry
			  <function <lambda> at xxxxx>
			  ```
		- ### Native Data Types
			- `int` objets represent integers exactly, without any approximation or limits on their size.
			- `float` values should be treated as approximations to real values.
			- Combining `float` values can lead to approximation errors.
	- ## 2.2 Data Abstraction
	  collapsed:: true
		- A methodology by which functions enforce an abstraction barrier between **representation** and **use**.
		- Lists in Python(and also in most other programming languages) are 0-indexed. One intuition that supports this indexing convention is that the index represents how far an element is offset from the beginning of the list.
		- Abstraction barriers make programs easier to maintain and to modify. The fewer functions that depend on a particular representation, the fewer changes are required when one wants to change that representation.
		- ### The Properties of Data
			- The functional representation, although obscure, is a perfectly adequate way to represent pairs, since it fulfills the only conditions that pairs need to fulfill. The practice of data abstraction allows us to switch among representations easily.
			- ```python
			  # the functional representation
			  def pair(x, y):
			    	"""Return a function that represents a pair."""
			      def get(index):
			        	if index == 0:
			            	return x
			          elif index == 1:
			            	return y
			      return get
			  
			  def select(p, i):
			    	"""Return the element at index i of pair p."""
			      return p(i)
			  ```
			- ```python
			  # the same as:
			  def select(p, i):
			    	return p[i]
			  ```
		- ### Disc 04: Lists
			- ![disc04-sol.pdf](../assets/disc04-sol_1656437305043_0.pdf)
	- ## 2.3 Sequences
		- ### Tree Abstraction
		  collapsed:: true
			- ![image.png](../assets/image_1656542361844_0.png)
			- A tree has a label value and a list of branches
			- ```python
			  """
			  >>> tree(3, [tree(1),
			  			 tree(2, [tree(1),
			               		  tree(1)])])
			  [3, [1], [2, [1], [1]]]
			  """
			  
			  def tree(label, branches=[]):
			    	for branch in branches:
			        	assert is_tree(branch)
			      return [label] + list(branches)
			    
			  def label(tree):
			    	return tree[0]
			  
			  def branches(tree):
			    	return tree[1:]
			    
			  def is_tree(tree):
			    	if type(tree) != list or len(tree) > 1:
			        	return False
			      for branch in branches(tree):
			        	if not is_tree(branch):
			            	return False
			      return True
			    
			  def is_leaf(tree):
			    	return not branches(tree)
			  ```
			- Processing a leaf is often the base case of a tree processing function.
			- The recursive case typically makes a recursive call on each branch, then aggregates
			- ```python
			  def count_leaves(t):
			    	"""Count the leaves of a tree."""
			      if is_leaf(t):
			        	return 1
			      else:
			        	branch_counts = [count_leaves(b) for b in branches(t)]
			          return sum(branch_counts)
			        
			  def leaves(tree):
			    	"""Return a list containing the leaves of tree.
			      >>> leaves(fib_tree(5))
			      [1, 0, 1, 0, 1, 1, 0, 1]
			      """
			      if is_leaf(tree):
			        	return [label(tree)]
			      else: 
			        	return sum(leaves(b) for b in branches[tree])
			  ```
			- Creating Trees
			- ```python
			  def increment_leaves(t):
			    	"""Return a tree like t but with leaf values incremented."""
			      if is_leaf(t):
			        	return tree(label(t) + 1)
			      else:
			        	bs = [increment_leaves(b) for b in branches(t)]
			          return tree(label(t), bs)
			        
			  def increment(t):
			    	"""Return a tree like t but with all node values incremented."""
			      # No base case, because when go down to the leaves, the second 
			      # paramater will be None.
			      return tree(label(t) + 1, [increment(b) for b in branches(t)])
			  ```
		- ### Lab 05: Python Lists, Data Abstraction, Trees
		  collapsed:: true
			- [GitHub Link: Lab 05](https://github.com/QiyanYu/UCB_CS61A/blob/main/lab05/lab05.py)
			- #### Q7: Sprout leaves
				- ```python
				  def sprout_leaves(t, values):
				    	# if is_leaf(t):
				      #     branches_list = []
				      #     for v in values:
				      #         branches_list.append(tree(v))
				      #     return tree(label(t), branches_list)
				      # else:
				      #     branches_list = []
				      #     for b in branches(t):
				      #         branches_list.append(sprout_leaves(b, values))
				      # return tree(label(t), branches_list)
				      
				      # *********************** #
				      # Using List Comprehensions:
				      if is_leaf(t):
				          return tree(label(t), [tree(v) for v in values])
				      else:
				          return tree(label(t), [sprout_leaves(b, values) for b in branches(t)])
				  ```
	- ## Project CATS
	  collapsed:: true
		- [GitHub Link](https://github.com/QiyanYu/UCB_CS61A/blob/main/cats/cats.py)
		- [Description](https://inst.eecs.berkeley.edu/~cs61a/sp20/proj/cats/)
		- ### Problem 5
			- Using `max` or `min` with the optional `key` argument.
			- ```python
			  min(valid_words, key = lambda w: diff_function(user_word, w, limit))
			  ```
		- ### Problem 6
		  collapsed:: true
			- ```python
			  # With helper function
			  def sphinx_swap(start, goal, limit):
			    	def helper(s, g, sum):
			          if sum > limit:
			              return sum
			          elif len(s) == 0 or len(g) == 0:
			              return len(s) + len(g) + sum
			          elif s[0] == g[0]:
			              return helper(s[1:], g[1:], sum)
			          else:
			              return helper(s[1:], g[1:], sum+1)
			      return helper(start, goal, 0)
			  ```
			- ```python
			  # Without helper function
			  def sphinx_swap(start, goal, limit):
			    	if limit < 0:
			          return 0
			      elif len(start) == 0 or len(goal) == 0:
			          return len(start) + len(goal)
			      elif start[0] == goal[0]:
			          return sphinx_swap(start[1:], goal[1:], limit)
			      else:
			          return 1 + sphinx_swap(start[1:], goal[1:], limit-1)
			      
			  ```
			- tips:
				- ```python
				  elif len(s) == 0:
				    	return len(g) + sum
				  elif len(g) == 0:
				    	return len(s) + sum
				    
				  # A better solution:
				  elif len(s) == 0 or len(g) == 0:
				    	return len(s) + len(g) + sum
				  ```
			-
		- ### Problem 8
			- Using `zip()`
				- ```python
				  correct = 0
				  for i in range(len(typed)):
				      if typed[i] == prompt[i]:
				          correct += 1
				      else:
				          break
				  # ********** #
				  # Better way:
				  correct = 0
				  for t, p in zip(typed, prompt):
				    	if t == p:
				        	correct += 1
				      else:
				        	break
				  ```
-
- ![cs61a_homepage.pdf](../assets/cs61a_homepage_1656114998394_0.pdf)