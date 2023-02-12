- ### Ceiling Function
	- For `ceiling(d/i)`, we can use `(d + i - 1) / i` to get the ceiling value.
- ### Modify inputs for avoiding override default method
	- [ [[2530. maximal Score After Applying K Operations]] ]
### By applying the same rule to every element in the array, we can avoid having to examine the entire array and instead just check a single item.
	- [[1806. Minimum Number of Operations to Reinitialize a Permutation]]
### If we use `O(N^2)` algorithm, we should try to eliminate the time complexity.
- ### Use Bit to represent multiple boolean variables
	- [[2299. Strong Password Checker II]]
### Check even of odd
	- `(i & 1) == 0`
### Fast way to get `pow(2, n)`
	- [[2550. Count Collisions of Monkeys on a Polygon]]
### GCD
	- [[Euclidean Division Algorithm: GCD]]
### Order is a powerful property. If sorting an array doesn't affect the solution, try sorting the array and rethinking to see if a new idea can be found.
	- [[1798. Maximum Number of Consecutive Values You Can Make]]
- ### BFS
	- #### When using BFS, do not forget `visited[][]` array. And also do not use `Set<> vistied`
		- [[1162. As Far from Land as Possible]]