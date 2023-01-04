- When using switch clause, don't forget `break` at the end.
- If we don't add `break`, this test will pass forever. (cause unnoticeable bug)
- ```java
  for (int i = 0; i < 1000; i++) {
  	int n = StdRandom.uniform(0, 4);
  	switch (n) {
  		case 0:
  			solution.addFirst(i);
  			buggy.addFirst(i);
  			log.addLast("addFirst(" + i + ")");
  			break;
  		case 1:
  			solution.addLast(i);
  			buggy.addLast(i);
  			log.addLast("addLast(" + i + ")");
  			break;
  		case 2:
  			if (solution.size() > 0) {
  				int removeSolution = solution.removeFirst();
  				int removeBuggy = buggy.removeFirst();
  				log.addLast("removeFirst()");
  				assertEquals(getLog(log), removeSolution, removeBuggy);
  			}
  			break;
  		case 3:
  			if (solution.size() > 0) {
  				int removeSolution = solution.removeLast();
  				int removeBuggy = buggy.removeLast();
  				log.addLast("removeLast()");
  				assertEquals(getLog(log), removeSolution, removeBuggy);
  			}
  			break;
  	}
  ```