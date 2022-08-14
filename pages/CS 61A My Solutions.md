- [GitHub Link](https://github.com/QiyanYu/UCB_CS61A) of My solution for homework and course projects
- # Projects
	- ## CATS
	  collapsed:: true
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
	- ## Ants
	  collapsed:: true
		- In Python 3, the plain `int` type is unbound. So if we need a maximum number, use `float("inf")`
		- ### Problem 5
			- > To damage the `FireAnt`, call the `reduce_armor` method inherited from `Ant`. Do *not* call `self.reduce_armor`, or you'll end up stuck in a recursive loop.
			- This is because currently we are in the `self.reduce_armor()`, if we call `self.reduce_armor` again, it will go into an infinite loop.
		- ### Problem 7
			- If we need to modify a list while iterating it, we should get a copy of list to loop.
			- ```python
			  for x in lst[:]:
			  ```
		- LATER Extra Credit & Optional Problem
- # Homework
	- ## HW 02
	  collapsed:: true
		- [hw02 q3 q4](https://github.com/QiyanYu/UCB_CS61A/blob/main/hw02/hw02.py)
		- [Questions description](https://inst.eecs.berkeley.edu/~cs61a/sp20/hw/hw02/)
	- ## HW 03 #recursion #recap
	  collapsed:: true
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
	- ## HW 05
		- ### Q4: Generate Paths
			- Define a generator function  `generate_paths`  which takes in a Tree  `t` , a value  `value` , and returns a generator object which yields each path from the root of  `t`  to a node that has label  `value` .
			- ```python
			  def generate_paths(t, value):
			      """Yields all possible paths from the root of t to a node with the label value
			      as a list.
			  
			      >>> t1 = Tree(1, [Tree(2, [Tree(3), Tree(4, [Tree(6)]), Tree(5)]), Tree(5)])
			      >>> print(t1)
			      1
			        2
			          3
			          4
			            6
			          5
			        5
			      >>> next(generate_paths(t1, 6))
			      [1, 2, 4, 6]
			      >>> path_to_5 = generate_paths(t1, 5)
			      >>> sorted(list(path_to_5))
			      [[1, 2, 5], [1, 5]]
			  
			      >>> t2 = Tree(0, [Tree(2, [t1])])
			      >>> print(t2)
			      0
			        2
			          1
			            2
			              3
			              4
			                6
			              5
			            5
			      >>> path_to_2 = generate_paths(t2, 2)
			      >>> sorted(list(path_to_2))
			      [[0, 2], [0, 2, 1, 2]]
			      """
			  
			      "*** YOUR CODE HERE ***"
			  	if t.label == value:
			        	yield [value]
			      for bran in t.branches:
			        	for b in generate_paths(bran, value):
			            	yield [t.label] + b 
			  
			              "*** YOUR CODE HERE ***"
			  ```
		- ### Q7: Remove All
			- Implement a function  `remove_all`  that takes a  `Link` , and a  `value` , and remove any linked list node containing that value. You can assume the list already has at least one node containing  `value`  and the first element is never removed. Notice that you are not returning anything, so you should mutate the list.
			- ```python
			  def remove_all(link , value):
			      """Remove all the nodes containing value in link. Assume that the
			      first element is never removed.
			  
			      >>> l1 = Link(0, Link(2, Link(2, Link(3, Link(1, Link(2, Link(3)))))))
			      >>> print(l1)
			      <0 2 2 3 1 2 3>
			      >>> remove_all(l1, 2)
			      >>> print(l1)
			      <0 3 1 3>
			      >>> remove_all(l1, 3)
			      >>> print(l1)
			      <0 1>
			      >>> remove_all(l1, 3)
			      >>> print(l1)
			      <0 1>
			      """
			      "*** YOUR CODE HERE ***"
			      # Recursion version:
			      if link.rest is Link.empty:
			        	return 
			      if link.rest.first == value:
			        	link.rest = link.rest.rest
			          remove_all(link, value)
			      else:
			        	remove_all(link.rest, value)
			          
			  	# Iteration version:
			      prev, curr = link, link.rest
			      while curr is not Link.empty:
			        	if curr.first == value:
			              prev.rest = curr.rest
			  		else:
			            	prev = curr
			          curr = curr.rest
			  ```
		- ### Q8: Deep Map
			- ```python
			  def deep_map(f, link):
			      """Return a Link with the same structure as link but with fn mapped over
			      its elements. If an element is an instance of a linked list, recursively
			      apply f inside that linked list as well.
			  
			      >>> s = Link(1, Link(Link(2, Link(3)), Link(4)))
			      >>> print(deep_map(lambda x: x * x, s))
			      <1 <4 9> 16>
			      >>> print(s) # unchanged
			      <1 <2 3> 4>
			      >>> print(deep_map(lambda x: 2 * x, Link(s, Link(Link(Link(5))))))
			      <<2 <4 6> 8> <<10>>>
			      """
			      "*** YOUR CODE HERE ***"
			      if link is Link.empty:
			          return Link.empty
			      if isinstance(link.first, Link):
			          first = deep_map(f, link.first)
			      else:
			          first = f(link.first)
			      return Link(first, deep_map(f, link.rest))
			  ```
	-
- # Labs
	- ## Lab 04 #recursion #recap
	  collapsed:: true
		- [lab 04](https://inst.eecs.berkeley.edu/~cs61a/sp20/lab/lab04/)
		- [lab04-GitHub](https://github.com/QiyanYu/UCB_CS61A/blob/main/lab04/lab04.py)
		- ### Q5: Maximum Subsequence
			- There are two key insights for this problem
				- You need to split into the cases where the ones digit is used and the one where it is not. In the case where it is, we want to reduce `l` since we used one of the digits, and in the case where it isn't we do not.
				- In the case where we are using the ones digit, you need to put the digit back onto the end, and the way to attach a digit `d` to the end of a number `n` is `10 * n + d` .
	- ## Lab 05: Python Lists, Data Abstraction, Trees
	  collapsed:: true
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
	- ## Lab 06: Nonlocal & Generators
	  collapsed:: true
		- ### Q3:Scale
			- [description](https://inst.eecs.berkeley.edu/~cs61a/sp20/lab/lab06/#q3)
			- Using `yield from`
			- ```python
			  def scale(it, multiplier):
			    	"""Yield elements of the iterable it scaled by a number multiplier.
			      
			      >>> m = scale([1, 5, 2], 5)
			      >>> type(m) 
			      <class 'generator'>
			      >>> list(m)
			      [5, 25, 10]
			      
			      >>> m = scale(naturals(), 2)
			      >>> [next(m) for _ in range(5)]
			      [2, 4, 6, 8, 10]
			      """
			      yield from map(lambda x: x * multiplier, it)
			  ```
			- Cannot use `yield from [x * multiplier for x in it]`, since it cannot compute infinite sequences.
		- ### Q4: hailstone
			- [description](https://inst.eecs.berkeley.edu/~cs61a/sp20/lab/lab06/#q4)
			- Using recursion and `yield from`
			- ```python
			  def hailstone(n):
			      """
			      >>> for num in hailstone(10):
			      ...     print(num)
			      ...
			      10
			      5
			      16
			      8
			      4
			      2
			      1
			      """
			      def helper(x):
			        	if x == 1:
			            	return [x]
			          else:
			            	return [x] + helper(x//2 if x%2 == 0 else 3*x+1)
			  	yield from helper(n)
			  ```
	- ## Lab 7: Object-Oriented Programming, Linked Lists, and Trees
	  collapsed:: true
		- ### Q9: Nonlocal Environment Diagram
		- Draw the environment diagram that results from running the following code.
		- ```python
		  def moon(f):
		      sun = 0
		      moon = [sun]
		      def run(x):
		          nonlocal sun, moon
		          def sun(sun):
		              return [sun]
		          y = f(x)
		          moon.append(sun(y))
		          return moon[0] and moon[1]
		      return run
		  
		  moon(lambda x: moon)(1)
		  ```
		- <iframe width="800" height="500" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=def%20moon%28f%29%3A%0A%20%20%20%20sun%20%3D%200%0A%20%20%20%20moon%20%3D%20%5Bsun%5D%0A%20%20%20%20def%20run%28x%29%3A%0A%20%20%20%20%20%20%20%20nonlocal%20sun,%20moon%0A%20%20%20%20%20%20%20%20def%20sun%28sun%29%3A%0A%20%20%20%20%20%20%20%20%20%20%20%20return%20%5Bsun%5D%0A%20%20%20%20%20%20%20%20y%20%3D%20f%28x%29%0A%20%20%20%20%20%20%20%20moon.append%28sun%28y%29%29%0A%20%20%20%20%20%20%20%20return%20moon%5B0%5D%20and%20moon%5B1%5D%0A%20%20%20%20return%20run%0A%0Amoon%28lambda%20x%3A%20moon%29%281%29&codeDivHeight=400&codeDivWidth=350&cumulative=true&curInstr=0&origin=composingprograms.js&py=3&rawInputLstJSON=%5B%5D"> </iframe>
		-
	- ## Lab 8: Midterm Review
	  collapsed:: true
		- ### Q1: Insert #linked-list
			- Implement a function  `insert`  that takes a  `Link` , a  `value` , and an  `index` , and inserts the  `value`  into the  `Link`  at the given  `index` . You can assume the linked list already has at least one element. Do not return anything --  `insert`  should mutate the linked list.
			- ```python
			  def insert(link, value, index):
			      """Insert a value into a Link at the given index.
			  
			      >>> link = Link(1, Link(2, Link(3)))
			      >>> print(link)
			      <1 2 3>
			      >>> insert(link, 9001, 0)
			      >>> print(link)
			      <9001 1 2 3>
			      >>> insert(link, 100, 2)
			      >>> print(link)
			      <9001 1 100 2 3>
			      >>> insert(link, 4, 5)
			      IndexError
			      """
			  	if index == 0:
			          curr, rst = link.first, link.rest
			          link.first = value
			          link.rest = Link(curr, rst)
			      elif index > 0 and link.rest is not Link.empty:
			          insert(link.rest, value, index-1)
			      else:
			          raise IndexError
			  ```
			- There is another way to achieve this function by returning the current link (node),  or add a helper function.
			- But since in this question we cannot return anything, we need to come up another method.
			- This is a single linked list, the key is to keep the previous linked list. So we don't insert the new linked list in the current position, we append a new linked list after current node, modify current node value, and "move" previous current node to next position.
		- ### [#B] Subsequences #recursion
			- A subsequence of a sequence  `S`  is a sequence of elements from  `S` , in the same order they appear in  `S` , but possibly with elements missing. Thus, the lists  `[]` ,  `[1, 3]` ,  `[2]` , and  `[1, 2, 3]`  are some (but not all) of the subsequences of  `[1, 2, 3]` . Write a function that takes a list and returns a list of lists, for which each individual list is a subsequence of the original input.
			- In order to accomplish this, you might first want to write a function  `insert_into_all`  that takes an item and a list of lists, adds the item to the beginning of nested list, and returns the resulting list.
			- ```python
			  def insert_into_all(item, nested_list):
			      """Assuming that nested_list is a list of lists, return a new list
			      consisting of all the lists in nested_list, but with item added to
			      the front of each.
			  
			      >>> nl = [[], [1, 2], [3]]
			      >>> insert_into_all(0, nl)
			      [[0], [0, 1, 2], [0, 3]]
			      """
			      return [[item] + l for l in nested_list]
			  
			  def subseqs(s):
			      """Assuming that S is a list, return a nested list of all subsequences
			      of S (a list of lists). The subsequences can appear in any order.
			  
			      >>> seqs = subseqs([1, 2, 3])
			      >>> sorted(seqs)
			      [[], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]]
			      >>> subseqs([])
			      [[]]
			      """
			      if len(s) == 0:
			        	return [[]]
			      else:
			        	sub = subseqs(s[1:])
			          return sub + insert_into_all(s[0],sub)
			  ```
		- ### [#A] Q4: Increasing Subsequences #recursion
			- In [Lab 4](https://inst.eecs.berkeley.edu/~cs61a/sp20/lab/lab04/#q7), we examined the Subsequences problem. A subsequence of a sequence  `S`  is a sequence of elements from  `S` , in the same order they appear in  `S` , but possibly with elements missing. For example, the lists  `[]` ,  `[1, 3]` ,  `[2]` , and  `[1, 3, 2]`  are subsequences of  `[1, 3, 2]` . Again, we want to write a function that takes a list and returns a list of lists, where each individual list is a subsequence of the original input.
			- This time we have another condition: we only want the subsequences for which consecutive elements are *nondecreasing*. For example,  `[1, 3, 2]`  is a subsequence of  `[1, 3, 2, 4]` , but since 2 < 3, this subsequence would *not* be included in our result.
			- **Fill in the blanks** to complete the implementation of the  `inc_subseqs`  function. You may assume that the input list contains no negative elements.
			- You may use the provided helper function  `insert_into_all` , which takes in an  `item`  and a list of lists and inserts the  `item`  to the front of each list.
			- ```python
			  def inc_subseqs(s):
			      """Assuming that S is a list, return a nested list of all subsequences
			      of S (a list of lists) for which the elements of the subsequence
			      are strictly nondecreasing. The subsequences can appear in any order.
			  
			      >>> seqs = inc_subseqs([1, 3, 2])
			      >>> sorted(seqs)
			      [[], [1], [1, 2], [1, 3], [2], [3]]
			      >>> inc_subseqs([])
			      [[]]
			      >>> seqs2 = inc_subseqs([1, 1, 2])
			      >>> sorted(seqs2)
			      [[], [1], [1], [1, 1], [1, 1, 2], [1, 2], [1, 2], [2]]
			      """
			      def subseq_helper(s, prev):
			          if not s:
			              return [[]]
			          elif s[0] < prev:
			              return subseq_helper(s[1:], prev)
			          else:
			              a = subseq_helper(s[1:], s[0])
			              b = subseq_helper(s[1:], prev)
			              return insert_into_all(s[0], a) + b
			      return subseq_helper(s, 0)
			  ```
		- ### [#A] Q5: Generate Permutations #recursion
			- Given a sequence of unique elements, a *permutation* of the sequence is a list containing the elements of the sequence in some arbitrary order. For example,  `[2, 1, 3]` ,  `[1, 3, 2]` , and  `[3, 2, 1]`  are some of the permutations of the sequence  `[1, 2, 3]` .
			- Implement  `permutations` , a generator function that takes in a sequence  `seq`  and returns a generator that yields all permutations of  `seq` .
			- Permutations may be yielded in any order. Note that the doctests test whether you are yielding all possible permutations, but not in any particular order. The built-in  `sorted`  function takes in an iterable object and returns a list containing the elements of the iterable in non-decreasing order.
			- ```python
			  def permutations(seq):
			      """Generates all permutations of the given sequence. Each permutation is a
			      list of the elements in SEQ in a different order. The permutations may be
			      yielded in any order.
			  
			      >>> perms = permutations([100])
			      >>> type(perms)
			      <class 'generator'>
			      >>> next(perms)
			      [100]
			      >>> try:
			      ...     next(perms)
			      ... except StopIteration:
			      ...     print('No more permutations!')
			      No more permutations!
			      >>> sorted(permutations([1, 2, 3])) # Returns a sorted list containing elements of the generator
			      [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
			      >>> sorted(permutations((10, 20, 30)))
			      [[10, 20, 30], [10, 30, 20], [20, 10, 30], [20, 30, 10], [30, 10, 20], [30, 20, 10]]
			      >>> sorted(permutations("ab"))
			      [['a', 'b'], ['b', 'a']]
			      """
			      if not seq:
			          yield []
			      else:
			          for perm in permutations(seq[1:]):
			              for i in range(len(seq)):
			                  yield perm[:i] + list(seq[:1]) + perm[i:]
			  ```
			- We can get the initial permutations by taking all the permutation of the smaller list, and insert the first element into all possible position to get all kinds of permutations.
		- ### Q10: Deep Linked List Length #recursion
			- A linked list that contains one or more linked lists as elements is called a *deep* linked list. Write a function  `deep_len`  that takes in a (possibly deep) linked list and returns the *deep length* of that linked list. The deep length of a linked list is the total number of non-link elements in the list, as well as the total number of elements contained in all contained lists. See the function's doctests for examples of the deep length of linked lists.
			- ```python
			  def deep_len(lnk):
			      """ Returns the deep length of a possibly deep linked list.
			  
			      >>> deep_len(Link(1, Link(2, Link(3))))
			      3
			      >>> deep_len(Link(Link(1, Link(2)), Link(3, Link(4))))
			      4
			      >>> levels = Link(Link(Link(1, Link(2)), \
			              Link(3)), Link(Link(4), Link(5)))
			      >>> print(levels)
			      <<<1 2> 3> <4> 5>
			      >>> deep_len(levels)
			      5
			      """
			      if lnk is Link.empty:
			          return 0
			      elif isinstance(lnk, int):
			          return 1
			      else:
			          return deep_len(lnk.first) + deep_len(lnk.rest)
			  ```
		- ### Q12: Prune Small #recursion #tree
			- Complete the function  `prune_small`  that takes in a  `Tree`   `t`  and a number  `n`  and prunes  `t`  mutatively. If  `t`  or any of its branches has more than  `n`  branches, the  `n`  branches with the smallest labels should be kept and any other branches should be *pruned*, or removed, from the tree.
			- ```python
			  def prune_small(t, n):
			      """Prune the tree mutatively, keeping only the n branches
			      of each node with the smallest label.
			  
			      >>> t1 = Tree(6)
			      >>> prune_small(t1, 2)
			      >>> t1
			      Tree(6)
			      >>> t2 = Tree(6, [Tree(3), Tree(4)])
			      >>> prune_small(t2, 1)
			      >>> t2
			      Tree(6, [Tree(3)])
			      >>> t3 = Tree(6, [Tree(1), Tree(3, [Tree(1), Tree(2), Tree(3)]), Tree(5, [Tree(3), Tree(4)])])
			      >>> prune_small(t3, 2)
			      >>> t3
			      Tree(6, [Tree(1), Tree(3, [Tree(1), Tree(2)])])
			      """
			      while len(t.branches) > n:
			          largest = max(t.branches, key=lambda x: x.label)
			          t.branches.remove(largest)
			      for b in t.branches:
			          prune_small(b, n)
			  ```
		- ### [#A] Q13: Number of Trees #recursion #tree
			- How many different possible full binary tree (each node has 2 branches or 0, but never 1) structures exist that have exactly n leaves?
			- ```python
			  # Recursion / Tree Recursion
			  def num_trees(n):
			      """How many full binary trees have exactly n leaves? E.g.,
			  
			      1   2        3       3    ...
			      *   *        *       *
			         / \      / \     / \
			        *   *    *   *   *   *
			                / \         / \
			               *   *       *   *
			  
			      >>> num_trees(1)
			      1
			      >>> num_trees(2)
			      1
			      >>> num_trees(3)
			      2
			      >>> num_trees(8)
			      429
			  
			      """
			      if n <= 2:
			          return 1
			      return sum([num_trees(i) * num_trees(n - i) for i in range(1, n)])
			  ```
	- ## Lab 9: Scheme
		-
-
- # Discussion
	- ## Disc01: Control, Environment Diagrams
	  collapsed:: true
		- ![disc01_sol.pdf](../assets/disc01_sol_1658209016336_0.pdf)
	- ## Disc02: Higher-Order Functions, Self Reference
	  collapsed:: true
		- ![disc02.pdf](../assets/disc02_1655417678490_0.pdf)
	- ## Disc 03: Recursion #recursion #recap
	  collapsed:: true
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
	  collapsed:: true
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
	- ## Disc 05: Data Abstraction, Trees, Mutability
	  collapsed:: true
		- ![disc05_sol.pdf](../assets/disc05_sol_1657736690813_0.pdf)
		- ### Q 1.3: #recursion
			- ![image.png](../assets/image_1657745766779_0.png)
			- ```python
			  def find_path(tree, x):
			    	if label(tree) == x:
			        	return [x]
			      for b in branches(tree):
			        	path = find_path(b, x)
			          if path:
			            	return [label(tree)] + path
			  ```
		- ### Q 2.1:
			- ```python
			  lst1 = [1, 2, 3]
			  lst2 = lst1
			  # *******************
			  lst2.extend([5, 6]) # [1, 2, 3, 5, 6]
			  lst1.append([-1, 0, 1]) # [1, 2, 3, 5, 6, [-1, 0, 1]]
			  # *******************
			  lst3 = lst2[:] # lst3 copy lst1, but point to the same [-1,0.1] object
			  lst3[5] is lst2[5] # True
			  ```
			- `append()` vs `extend()` #python
				- `append(el)`: Adds `el` to the end of the list, and returns `None`
				- `extend(lst)`: Extends the list by concatenating it with `lst`, and returns `None`
			- After copy a list, the sublist inside the original list and copied list both point to the same object.
		- ### So Many Options (a): #recursion
			- Implement the following function `partition_options` which outputs all the ways to partition a number `total` using numbers no larger than `biggest`.
			- ```python
			  def partition_options(total, biggest):
			    	"""
			      >>> partition_options(2, 2)
			      [[2], [1, 1]]
			      >>> partition_options(3, 3)
			      [[3], [2, 1], [1, 1, 1]]
			      >>> partition_options(4, 3)
			      [[3, 1], [2, 2], [2, 1, 1], [1, 1, 1, 1]]
			      """
			      if total == 0:
			        	return [[]]
			      elif total < 0 or biggest == 0:
			        	return []
			      else:
			        	with_biggest = partiton_options(total-biggest, biggest)
			          without_biggest = partition_options(total, biggest-1)
			          with_biggest = [[biggest] + elem for elem in with_biggest]
			          return with_biggest + without_biggest
			  ```
		- ### So Many Options (b): #recursion
			- Return the minimum number of elements from the list that need to be summed in order to add up to `T`.The same element can be used multiple times in the sum. For example, for `T = 11` and `lst = [5,4,1]` we should return 3 because at minimum we need to add 3 numbers together (5, 5, and 1). You can assume that there always exists a linear combination of the elements in `lst` that equals `T`.
			- ```python
			  def min_elements(T, lst):
			    	"""
			      >>> min_elements(10, [4, 2, 1]) # 4 + 4 + 2
			      3 
			      >>> min_elements(12, [9, 4, 1]) # 4 + 4 + 4
			      3
			      >>> min_elements(0, [1, 2, 3]) 
			      0
			      """
			      if T == 0:
			        	return 0
			      return min([1 + min_elements(T-i, lst) for i in lst if i <= T])
			  ```
	- ## Disc 06: Nonlocal, Iterators & Generators
	  collapsed:: true
		- ![disc06_sol.pdf](../assets/disc06_sol_1658208927119_0.pdf)
		- ### [#A] Q 1.3 #recursion
			- Write a function that takes in no arguments and returns two functions, `prepend` and `get`, which represent the “add to front of list” and “get the ith item” operations, respectively.  **Do not use any python built-in data structures like lists or dictionaries.**You do not necessarily need to use all the lines.
			- ```python
			  def nonlocalist():
			    	"""
			      >>> prepend, get = nonlocalist()
			      >>> prepend(2)
			      >>> prepend(3)
			      >>> prepend(4)
			      >>> get(0)
			      4
			      >>> get(1)
			      3
			      >>> get(2)
			      2
			      >>> prepend(8)
			      >>> get(2)
			      3
			      """
			      get = lambda x: "Index out of range!"
			      def prepend(value):
			        	nonlocal get
			      	f = get
			          def get(i):
			            	if i == 0:
			                	return value
			              return f(i-1)
			  	return prepend, lambda x: get(x)
			  ```
		- ### Q 2.3 #recursion #generator
			- Implement `sum_paths_gen`, which takes in a tree `t` and and returns a generator which
			  yields the sum of all the nodes from a path from the root of a tree to a leaf.
			- ```python
			  def sum_paths_gen(t):
			    	"""
			      >>> t1 = tree(5)
			      >>> next(sum_paths_gen(t1))
			      5
			      >>> t2 = tree(1, [tree(2, [tree(3), tree(4)]), tree(9)])
			      >>> sorted(sum_paths_gen(t2))
			      [6, 7, 10]
			      """
			      if is_leaf(t):
			        	yield label(t)
			    	for b in branches(t):
			        for s in sum_paths_gen(t):
			          	yield s + label(t)
			  ```
		- ### Trie Recursion #recursion #trie
			- A **trie** is a type of tree where the values of each node are *letters* representing part of a larger *word*. Implement `collect_words`, which takes in a trie `t` and returns a Python list containing all the words contained in the trie.
			- ```python
			  >>> print_tree(greetings)
			  h 
			   i
			   e
			    l
			     l
			      o
			    y
			     
			  def collect_words(t):
			    	"""Return a list of all the words contained in the tree 
			      where the value of each node in the tree is an individual
			      letter. Words terminate at the leaf of a tree.
			      
			      >>> collect_words(greetings)
			      ['hi', 'hello', 'hey']
			      """
			      if is_leaf(t):
			        	return [label(t)]
			      words = []
			      for branch in branches(t):
			        	words += [label(t) + word for word in collect_words(branch)]
			      return words
			  ```
	- ## Disc 07: Object-Oriented Programming, Linked Lists
	  collapsed:: true
		- ![disc07_sol.pdf](../assets/disc07_sol_1659154854870_0.pdf)
		- ### 3.2 Linked List #linked-list
			- Write a function that takes in a Python list of linked lists and multiplies them
			  element-wise. It should return a new linked list.
			  If not all of the `Link` objects are of equal length, return a linked list whose length is that of the shortest linked list given. You may assume the `Link` objects are shallow linked lists, and that `lst_of_lnks` contains at least one linked list.
			- ```python
			  def multiply_lnks(lst_of_lnks): """
			          >>> a = Link(2, Link(3, Link(5)))
			          >>> b = Link(6, Link(4, Link(2)))
			          >>> c = Link(4, Link(1, Link(0, Link(2))))
			          >>> p = multiply_lnks([a, b, c])
			          >>> p.first
			          48
			          >>> p.rest.first
			          12
			          >>> p.rest.rest.rest is Link.empty
			          True
			          """
			  ```
			- ```python
			  # Recursive Version:
			  product = 1
			  for lnk in lst_of_lnks:
			  	if lnk is Link.empty: 
			        	return Link.empty
			  	product *= lnk.first
			  lst_of_lnks_rests = [lnk.rest for lnk in lst_of_lnks] 
			  return Link(product, multiply_lnks(lst_of_lnks_rests))
			  ```
			- ```python
			  # Iterative Version:
			  import operator
			  from functools import reduce 
			  def prod(factors):
			  	return reduce(operator.mul, factors, 1)
			  
			  head = Link.empty
			  tail = head
			  while Link.empty not in lst_of_lnks:
			  	all_prod = prod([l.first for l in lst_of_lnks]) 
			      if head is Link.empty:
			        	head = Link(all_prod)
			  		tail = head 
			  	else:
			      	tail.rest = Link(all_prod)
			  		tail = tail.rest
			  	lst_of_lnks = [l.rest for l in lst_of_lnks]
			  return head
			  ```
		- ### 1. Midterm Review Snax #recursion
			- ```python
			  def feed(snax, x, y):
			  	"""
			  	>>> feed([1, 1, 1], 2, 2) # The two robots both refill once at the beginning
			  	2
			  	>>> feed([1, 2, 2], 2, 2) # Only one robot refills to feed the middle student
			  	3
			  	>>> feed([1, 1, 1, 2, 2], 2, 2)
			  	4
			  	>>> feed([3, 2, 1, 3, 2, 1, 1, 2, 3], 3, 3)
			  	6
			  	"""
			  	def helper(lst, p, q):
			  		if p < 0 or q < 0:
			  			return float("inf")
			  		elif not lst:
			  			return 0
			  		elif len(lst) == 1:
			  			return not (p >= lst[0] or q >= lst[0])
			  		else:
			  			a = helper(lst[1:-1], p - lst[0], q - lst[-1]) # No one refills
			  			b = 2 + helper(lst[1:-1], x - lst[0], y - lst[-1]) # Both refill
			  			c = 1 + helper(lst[1:-1], x - lst[0], q - lst[-1]) # Only robot A refills
			  			d = 1 + helper(lst[1:-1], p - lst[0], y - lst[-1]) # Only robot B refills
			  			return min(a, b, c, d)
			  	return helper(snax, 0, 0)
			  ```
			- For the base case:
			  ```python
			  elif len(lst) == 1:
			    	return not (p >= lst[0] or q >= lst[0])
			  ```
			  The return value `True` or `False` means `1` or `0` in number, so in this case, if either `p` or `q` can satisfy the requirement, it returns `False` which equals to `0`, otherwise, it returns `1`.
	- ## Disc 08: Efficiency
	  collapsed:: true
		- ![disc08.pdf](../assets/disc08_1659154978217_0.pdf)
		- ### Here are some general guidelines for finding the order of growth for the runtime of a function: #complexity
			- #### If the function is recursive or iterative, you can subdivide the problem as seen above:
				- Count the number of recursive calls/iterations that will be made in terms of input size n.
				- Find how much work is done per recursive call or iteration in terms of input size n.
			- The answer is usually the product of the above two, but be sure to pay attention to control flow!
			- #### If the function calls helper functions that are not constant-time, you need to take the runtime of the helper functions into consideration.
			- #### We can ignore constant factors. For example 1000000n and n steps are both linear.
			- #### We can also ignore smaller factors. For example if `h` calls `f` and `g`, and `f` is Quadratic while `g` is linear, then `h` is Quadratic.
			- #### For the purposes of this class, we take a fairly coarse view of efficiency. All the problems we cover in this course can be grouped as one of the following
				- **Constant:** the amount of time does not change based on the input size.
				  Rule: `n → 2n` means `t → t`.
				- **Logarithmic:** the amount of time changes based on the logarithm of the input size. Rule: `n → 2n` means `t → t+k`.
				- **Linear:** the amount of time changes based on the logarithm of the input size. 
				  Rule: `n → 2n` means `t → 2t`.
				- **Quadratic:** the amount of time changes based on the logarithm of the input size. 
				  Rule: `n → 2n` means `t → 4t`.
				- **Exponential:** the amount of time changes based on the logarithm of the input size. Rule: `n → n+1` means `t → 2t`.
	- ## Disc 09: Scheme
		- ![disc09_sol.pdf](../assets/disc09_sol_1659154865647_0.pdf)
		- ### Questions 5.1
			- Write a function which takes two lists and concatenates them.
			- Notice that simply calling `(cons a b)` would not work because it will create a deep list. Do not call builtin procedure `append`, which does the same thing as `my-append`.
			- ```scheme
			  (define (my-append a b)
			    if (null? a)
			    b
			    (cons (car a) (my-append (cdr a) b))
			  )
			  ```
	- ## Disc 10: Interpreters
		- ![disc10_sol.pdf](../assets/disc10_sol_1659154881273_0.pdf)
- # Guerrilla
  collapsed:: true
	- ## Guerrilla 00: Higher-Order Functions, Environment Diagrams, Control
	  collapsed:: true
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
	- ## Guerrilla 01: Python Lists, Recursion, Tree Recursion
	  collapsed:: true
		- ![guer01.pdf](../assets/guer01_1658274713061_0.pdf)
	- ## Guerrilla 02: Data Abstraction, Trees, Nonlocal, Iterators & Generators
	  collapsed:: true
		- ![guer02.pdf](../assets/guer02_1658274771831_0.pdf)
	- ## Guerrilla 03: Linked Lists, Object-Oriented Programming
		- ![guer03.pdf](../assets/guer03_1660099193805_0.pdf)
- # Misc
	- ## Sp18 Midterm 2 Problem 4(b): #recursion
		- Implement `combo`, which takes two non-negative integers `a` and `b`. It returns the smallest integer that contains all of the digits of `a` in order, as well as all of the digits of `b` in order.
		- ```python
		  def combo(a, b):
		    	""" Return the smallest integer with all of the digits of a and b (in order)
		      
		      >>> combo(531, 432) # 45312 contains both _531_ and 4_3_2.
		      45312
		      >>> comnbo(531, 4321) # 45321 contains both _53_1 and 4_321.
		      45321
		      >>>combo(0, 321) # The number 0 has no digits, so 0 is not in the result.
		      321
		      """
		      if a == 0 or b == 0:
		        	return a + b
		      elif a % 10 == b % 10:
		        	return combo(a // 10, b // 10) * 10 + a % 10
		      return min(combo(a // 10, b) * 10 + a % 10,
		                 combo(a, b // 10) * 10 + b % 10)
		  ```
		- {{video https://youtu.be/Z3l0XAE2Cas?t=226}}
		- {{youtube-timestamp 226}}
-