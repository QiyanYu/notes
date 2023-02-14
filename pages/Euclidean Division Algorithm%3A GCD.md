- ### Recursive:
	- ```java
	  public static int gcd(int a, int b) {
	    	if (b == 0) {
	        	return a;
	      }
	    	return gcd(b, a % b);
	  }
	  ```
- ### Iterative:
	- ```java
	  public static int gcd(int dividend, int divider) {
	          while (divider > 0) {
	  			int remainder = dividend % divider;
	  			dividend = divider;
	  			divider = remainder;
	          }
	          return dividend;
	      }
	  ```