- ## Arrays
	- ### Instantiate Arrays
		- After new arrays, all items in an integer array will be 0 for default value.
		- For string arrays, the default value will be `null` (all 0s) for string reference.
	- ### Arraycopy
		- Two ways to copy arrays:
			- Item by item using a loop.
			- Using arraycopy. Takes 5 parameters:
				- ```java
				  System.arraycopy(b, 0, x, 3, 2);
				  ```
				- ```python
				  (In Python): x[3:5] = b[0:2]
				  ```
				- Source array
				- Start position in source
				- Target array
				- Start position in target
				- Number to copy
	-