- ![disc07sol.pdf](../assets/disc07sol_1673680938430_0.pdf)
- ## Description
	- Given an int x and a sorted array A of N distinct integers, design an algorithm to find if there exists
	  indices i and j such that A[i] + A[j] == x.
- ## Solution
	- ```java
	  public static boolean findSumFaster(int[] A, int x){
	  	int left = 0;
	  	int right = A.length - 1;
	  	while (left <= right) {
	  		if (A[left] + A[right] == x) {
	  			return true;
	  		} else if (A[left] + A[right] < x) {
	  			left++;
	  		} else {
	  			right--;
	  		}
	  	}
	  	return false;
	  }
	  ```