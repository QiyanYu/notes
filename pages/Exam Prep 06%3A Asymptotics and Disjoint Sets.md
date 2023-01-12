- ![examprep06.pdf](../assets/examprep06_1673391289010_0.pdf)
- ```java
  void addToWQU(int[] elements) {
   	int[][] pairs = pairs(elements);
    	pairs = shuffle(pairs);
    	for (int[] pair: pairs) {
        	connect(pair[0], pair[1]);
      }
  }
  ```
- Modified Version:
	- ```java
	  void addToWQU(int[] elements) {
	   	int[][] pairs = pairs(elements);
	    	pairs = shuffle(pairs);
	    	for (int[] pair: pairs) {
	  	    if (size() == elements.length) {
	            	return;
	          }
	        	connect(pair[0], pair[1]);
	      }
	  }
	  ```
	-