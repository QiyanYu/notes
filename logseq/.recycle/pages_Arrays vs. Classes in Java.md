title:: Arrays vs. Classes in Java
#tag_language_Java

- ## Differences:
	- ### The key differences between memory boxes:
		- Array boxes are numbered and accessed using `[]` notation, and class boxes are named and accessed using dot notation.
		- Array boxes must all be the same type. Class boxes can be different types.
	- ### One particularly notable impact of these difference between memory boxes:
		- `[]` notation allows us to specify which index we'd like at runtime.
		- **By contrast**, specifying fields in a class is not something we do at runtime.
			- ```java
			  String fieldOfInterest = "mass";
			  Planet p = new Planet(6e24, "earth");
			  double mass = p[fieldOfInterest];
			  ```
		- If we tried compiling this, we'd get a syntax error.
			- ```bash
			  $ javac classDemo
			  FieldDemo.java:5: error: array required, but Planet found 
			  	double mass = earth[fileldOfInterest];
			  ```
		- The same problem occurs if we try to use dot notation:
			-
			- ```java
			  String fieldOfInterest = "mass";
			  Planet p = new Planet(6e24, "earth");
			  double mass = p.fieldOfInterest;	
			  ```
		- There is a way to specify desired fields at runtime call *reflection* [[Languages: Reflection]]
	-