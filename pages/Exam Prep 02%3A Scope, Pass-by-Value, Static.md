- ### 2 Quik maths
	- ```java
	  public static void swap(int A, int B) {
	    	int temp = B;
	    	B = A;
	    	A = temp;
	  }
	  
	  int a = 6;
	  int b = 7;
	  swap(a, b);
	  
	  // a: 6  b: 7
	  // for primitives, it only copies the value, not the reference
	  ```