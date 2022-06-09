- #algorithm
- ## Basic
	- ```java
	  public static int fib(int n) {
	  	if (n <= 1) {
	        	return n;
	      } else {
	        	return fib(n-1) + fib(n-2);
	      }
	  }
	  ```
- ## More Efficient Version
	- UCB CS61B Discussion 1 https://sp21.datastructur.es/materials/discussion/disc02sol.pdf
	- ```java
	  public static int fib2(int n, int k, int f0, int f1) {
	   	if (n == k) {
	        	return f0;
	      } else {
	        	return fib2(n, k + 1, f1, f1 + f0);
	      }
	  }
	  ```
	- {{youtube https://youtu.be/COw3Pl1Q-KI?t=1828}}
	- {{youtube-timestamp 1828}}
	- ```markdown
	  f(5, 0, 0, 1)
	  
	  f(5, 1, 1, 1)
	  f(5, 2, 1, 2)
	  f(5, 3, 2, 3)
	  f(5, 4, 3, 5)
	  f(5, 5, 5, 8)
	  
	  return 5
	  ```
	-
	-