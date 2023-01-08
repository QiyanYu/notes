- ### What's the worst possible case?
	- When the element we want isn't in the list at all.
	- Then we will make comparisons until we've eliminated all regions of the list, and there's no more bigger or smaller halves left.
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
-