- ### Method Overloading in Java
	- Java allows multiple methods with same name, but different parameters. This is called method **overloading.**
- ### Overriding vs. Overloading
	- If a "subclass" has a method with the exact same signature as in the "superclass", we say the subclass **overrides** the method.
	- Methods with the same name but different signatures are **overloaded.**
- ### Method Overriding
	- Why use @Override?
		- Main reason: Protects against typos.
		- Reminds programmer that method definition came from somewhere higher up in the inheritance hierarchy.
- ### Interface Inheritance
	- Specifying the capabilities of a subclass using the **implements** keyword if known as **interface inheritance**.
		- Interface: The list of all method signatures.
		- Inheritance: The subclass "inherits" the interface from a super class.
		- Specifies what the subclass can do, but not how.
		- Subclass **must** override all of these methods!
- ### Interface vs. Implementation Inheritance
	- Interface Inheritance (a.k.a. what):
		- Allows you to generalize code in a powerful, simple way.
	- Implementation Inheritance (a.k.a. how):
		- Allows code-reuse: Subclasses can rely on superclasses or interfaces.
	- **Important:** In both cases, we specify "is-a" relationships, not "has-a".
- ### Static Type vs. Dynamic Type
	- Every variable in Java has a "compile-time type", a.k.a. "static type".
		- This is the type specified at **declaration**. Never changes!
	- Variables also have a "run-time type", a.k.a. "dynamic type".
		- This is the type specified at **instantiation** (e.g. when using new).
		- Equal to the type of the object being pointed at.
- ### Dynamic Method Selection
	- The rule is, if we have a static type `X`, and a dynamic type `Y`, then if `Y` overrides the method from `X`, then on runtime, we use the method in `Y` instead. Student often confuse overloading and overriding.
- ### Overloading and Dynamic Method Selection
	- Dynamic method selection plays no role when it comes to overloaded methods. Consider the following piece of code, where `Fox extends Animal`.
	- ```
	  1  Fox f = new Fox();
	  2  Animal a = f;
	  3  define(f);
	  4  define(a);
	  ```
	- Let’s assume we have the following overloaded methods in the same class:
	- ```
	  public static void define(Fox f) { ... }
	  public static void define(Animal a) { ... }
	  ```
	- Line 3 will execute `define(Fox f)`, while line 4 will execute `define(Animal a)`. Dynamic method selection only applies when we have overridden methods. There is no overriding here, and therefore dynamic method selection does not apply.