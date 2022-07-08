- [GitHub Link](https://github.com/QiyanYu/UCB_CS61A) of My solution for homework and course projects
- # Projects
	- ## CATS
		- [GitHub Link](https://github.com/QiyanYu/UCB_CS61A/blob/main/cats/cats.py)
		- [Description](https://inst.eecs.berkeley.edu/~cs61a/sp20/proj/cats/)
		- ### Problem 5
			- Using `max` or `min` with the optional `key` argument.
			- ```python
			  min(valid_words, key = lambda w: diff_function(user_word, w, limit))
			  ```
		- ### Problem 6
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
- # Homework
	- ## TODO hw02 q3 q4
		- [hw02 q3 q4](https://github.com/QiyanYu/UCB_CS61A/blob/main/hw02/hw02.py)
		- [Questions description](https://inst.eecs.berkeley.edu/~cs61a/sp20/hw/hw02/)
	- ## HW 03 #recursion #recap
		- [HW03-GitHub](https://github.com/QiyanYu/UCB_CS61A/blob/main/hw03/hw03.py)
		- ### Q2: Ping-pong
			- ![image.png](../assets/image_1656198751231_0.png)
		- ### Q3: Count change
			- Given a positive integer `total` , a set of coins makes change for `total` if the sum of the values of the coins is `total` . For example, the following sets make change for `7` :
				- 7 1-cent coins
				- 5 1-cent, 1 2-cent coins
				- 3 1-cent, 2 2-cent coins
				- 3 1-cent, 1 4-cent coins
				- 1 1-cent, 3 2-cent coins
				- 1 1-cent, 1 2-cent, 1 4-cent coins
			- Second solution, using "linked list":
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
		- ### Q6: Anonymous factorial
			- To write a recursive function, we have always given it a name using a `def` or assignment statement so that we can refer to the function within its own body. In this question, your job is to define fact recursively without giving it a name!
- # Labs
	- ## Lab 04 #recursion #recap
		- [lab 04](https://inst.eecs.berkeley.edu/~cs61a/sp20/lab/lab04/)
		- [lab04-GitHub](https://github.com/QiyanYu/UCB_CS61A/blob/main/lab04/lab04.py)
		- ### Q5: Maximum Subsequence
			- There are two key insights for this problem
				- You need to split into the cases where the ones digit is used and the one where it is not. In the case where it is, we want to reduce `l` since we used one of the digits, and in the case where it isn't we do not.
				- In the case where we are using the ones digit, you need to put the digit back onto the end, and the way to attach a digit `d` to the end of a number `n` is `10 * n + d` .
	- ## Lab 05: Python Lists, Data Abstraction, Trees
		- [GitHub Link: Lab 05](https://github.com/QiyanYu/UCB_CS61A/blob/main/lab05/lab05.py)
		- ### Q7: Sprout leaves
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
		- ### Q9: Add trees
			- zip() will stop at shortest list, so we need to add the difference of branches back.
				- ```python
				  def add_tree(t1, t2):
				   	branches1, branches2 = branches(t1), branches(t2)
				      label_add = (label(t1) + label(t2)
				      if is_leaf(t1) or is_leaf(t2):
				        	return tree(label_add, (branches1 + branches2))
				      else:
				        	len1, len2 = len(branches1), len(branches2)
				          bran_diff = branches1[len2:] if len1 > len2 else branches2[len1:]
				          return tree(label_add, [add_trees(b1, b2) for b1, b2
				                               in zip(branches1, branches2)] + bran_diff)
				  ```
- # Discussion
	- ## Disc02: Higher-Order Functions, Self Reference
		- ![disc02.pdf](../assets/disc02_1655417678490_0.pdf)
	- ## Disc 03: Recursion #recursion #recap
		- ![disc03.pdf](../assets/disc03_1655858888105_0.pdf)
		- ### Q4: Is Prime
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
		- ### Q5: Write a procedure *merge(n1, n2)* which takes numbers with digits in decreasing order and returns a single number with all of the digits of the two, in decreasing order. treat 0 as having no digits.
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
	- ## Disc 04: Tree Recursion and Lists #recursion #recap
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
- # Guerrilla
	- ## Guerrilla 00: Higher-Order Functions, Environment Diagrams, Control
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