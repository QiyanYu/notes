title:: Static vs. Non-Static

- ## Static vs. Non-Static in Java
  id:: 6362b7aa-c21b-414c-8ea9-217825ffb80e
	- ### Key differences between static and non-static (a.k.a. instance) methods:
		- Static methods are invoked using the class name, e.g. Dog.makeNoise();
		- Instance methods are invoked using an instance name, e.g. maya.makeNoise();
		- Static methods can’t access “my” instance variables, because there is no “me”.
	- ### Why Static Methods?
		- Some classes are never instantiated. For example, Math.
			- `x = Math.round(5.6);`
	- ### A class may have a mix of static and non-static members.
		- A variable or method defined in a class is also called a member of that class.
		- Static members are accessed using class name, e.g. `Dog.binomen`.
		- Non-static members **cannot** be invoked using class name: ~~`Dog.makeNoise()`~~
		- Static methods must access instance variables via a specific instance, e.g. d1.