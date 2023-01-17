- ![disc07sol.pdf](../assets/disc07sol_1673937479579_0.pdf)
- ### How to Approach Tree Recursive Asymptotic Problems
	- 1. Draw out the recursive tree -> a node for every function call.
	- 2. Determine work per level (using recursive tree from above).
	- 3. Recognize which sum we are dealing with:
		- "arithmetic" sum: `(1 + 2 + 3 + 4 + ... + N) ~ N^2`
		- "dominating" sum: `(1 + 2 + 4 + 8 + ... + N) ~ N`
		- "constant" sum: `(N + N + N + ... + N) ~ N^2`
	- {{video https://youtu.be/b-ugYHFCg0M}}
- ### 2. Flip Flop
	- Using the method above.
- ### 3. Prime Factors
	- If `N` is prime, it will skip the inner while loop, makes it as special case scenario.
	- When `N` is a power of `2`, the inner while loop will divide N by 2, which will case `logN` time complexity.
	- And `logN` is smaller than `sqrt(N)`.
- ### 4. ADT Selection
	- #### 4. Determining all the Students that attend more than one of Shreyas’s sections.
		- Use two Sets. The first Set will store all the students seen so far, and the
		  second Set will be our answer. Iterate through the Students in each Section
		  and, if the first set contains the Student, add it to the second set. Otherwise,
		  add the Student to the first set.
	- #### 7. Cycling through the Students in one discussion section.
		- Put the Students in a List, a LinkedList recommended. Repeat removing
		  from the front and reinserting at the back.
-
-
-