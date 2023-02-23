- ### What's the worst possible case?
	- When the element we want isn't in the list at all.
	- Then we will make comparisons until we've eliminated all regions of the list, and there's no more bigger or smaller halves left.
- # Recursion Version
	- ```java
	  static int binarySearch(String[] sorted, String x, int lo, int hi)
	      if (lo > hi) return -1;
	      int m = (lo + hi) / 2;
	      int cmp = x.compareTo(sorted[m]);
	      if (cmp < 0) return binarySearch(sorted, x, lo, m - 1);
	      else if (cmp > 0) return binarySearch(sorted, x, m + 1, hi);
	      else return m;
	  }
	  
	  ```
- # Iteration Version (Leetcode)
	- ```java
	  int binarySearch(int[] sorted, int target) {
	    	int le = 0, ri = sorted.length - 1;
	    	while (le < ri) {
	        	int mi = le + (ri - le) / 2; // avoid overflow
	        	if (target < sorted[mi]) {
	            	ri = mi - 1;
	          } else {
	            	le = mi;
	          }
	      }
	    	return le;
	  }
	  ```
- # Leetcode
	- [[35. Search Insert Position]]
	- [[540. Single Element in a Sorted Array]]
	- [[1011. Capacity To Ship Packages Within D Days]]
	- [[1237. Find Positive Integer Solution for a Given Equation]]