- ### `instanceof` Demo
	- The `instanceof` keyword is very powerful in Java.
		- Checks to see if o's dynamic type is Dog(or one of its subtypes).
		- Casts o into a variable of static type Dog called uddaDog.
		- Works correctly, even if o is `null`.
		- ```java
		  @Override
		  public boolean equals(Object o) {
		    	if (o instanceof Dog uddaDog) {
		        return this.size == uddaDog.size;
		      }
		    	return false;
		  }
		  ```
- ### A better way of `toString()`
	- Previous:
		- ```java
		  @Override
		  public String toString() {
		    	StringBuilder returnSB = new StringBuilder("{");
		    	for (int i = 0; i < size - 1; i += 1) {
		        	returnSB.append(items[i].toString());
		        	returnSB.append(", ");
		      }
		    	returnSB.append(items[size - 1]);
		  	returnSB.append("}");
		    	return returnSB.toString();
		  }
		  ```
	- Revised:
		- ```java
		  @Override
		  public String toString() {
		    	List<String> listOfItems = new ArrayList<>();
		    	for (T x : this) {
		        	listOfItems.add(x.toString());
		      }
		    	return "{" + String.join(", ", listOfItems) + "}";
		  }
		  ```
- ### `Set.of()` method
	- ```java
	  public static <Glerp> ArraySet<Glerp> of(Glerp... stuff) {
	  	ArraySet<Glerp> returnSet = new ArraySet<Glerp>();
	  	for (Glerp x : stuff) {
	  		returnSet.add(x);
	  	}
	  	return returnSet;
	  } 
	  ```
	- This is [Generic Methods](https://docs.oracle.com/javase/tutorial/java/generics/methods.html)
-