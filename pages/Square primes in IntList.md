- #algorithm #recursion #short-circuit
-
- ```java
  public class IntList {
  	public int first;
    	public IntList rest;
  }
  
  public class IntListExercises {
    	 /**
       * Mutative method that squares each prime
       * element of the IntList.
       *
       * @param lst IntList from Lecture
       * @return True if there was an update to the list
       */
      public static boolean squarePrimes(IntList lst) {
          // Base Case: we have reached the end of the list
          if (lst == null) {
              return false;
          }
  
          boolean currElemIsPrime = Primes.isPrime(lst.first);
  
          if (currElemIsPrime) {
              lst.first *= lst.first;
          }
  
        	// Note!!!
        	// If we put `currElemIsPrime` in front, it will trigger 
        	// short-circuit evaluation. So it will stop the recursion 
        	// at the first time it squares one IntList
          return squarePrimes(lst.rest) || currElemIsPrime;
      }
  }
  ```
- This is a great example of a recursion using `||` to get a return as `True` as any of the result is `True`.
-