- ## Basic Idea:
	- ```java
	  void slidingWindow(String s, String t) {
	      int[] need = new int[128];
	      int[] window = new int[128];
	      for (char c : t.toCharArray()) {
	          need[c]++;
	      }
	      
	      int left = 0, right = 0;
	      int valid = 0; 
	      while (right < s.length()) {
	          char c = s.charAt(right);
	          right++;
	          
	          // perform updates on the data within the window
	          ...
	          
	          System.out.println("Window: [" + left + ", " + right + ")");
	          
	          while (window needs shrink) {
	              char d = s.charAt(left);
	              left++;
	              
	              // perform updates on the data within the window
	              ...
	          }
	      }
	  }
	  
	  ```
- ## Leetcode
	- [[438. Find All Anagrams in a String]]
	- [[567. Permutation in String]]