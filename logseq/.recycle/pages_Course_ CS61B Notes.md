public:: false
title:: Course: CS61B Notes
All lectures, readings, exams and discussions are from [sp21](https://sp21.datastructur.es/index.html) .
All labs, projects and homework are from [sp18](https://sp18.datastructur.es/).

- # Lecture
	- ## Lecture 1: Hello World Java #java
	- ## Lecture 2: Defining and Using Classes #java
	  collapsed:: true
		- **Instance variables/non-static variables**:
			- These must be declared inside the class.
			- In Java, instance variables or non-static variables must be declared inside the class, unlike Python or Matlab. #java #language-comparison
		- **Static method and variables** #java
			- All variables inside the static method must be static.
			- Each variables inside the instance method may be static variables.
	- ## Lecture 5: SLList, Nested Classes, Sentinel Nodes
	  collapsed:: true
		- **Null** #null
			- [[Languages: Undefined vs Null]]
		- [Sentinel Nodes](https://joshhug.gitbooks.io/hug61b/content/chap2/chap22.html) #linked-list
			- We want to keep complexity under control wherever possible. So we need to eliminate special conditions when programming.
		- **Golden Rule of Equals** #object #equal
		  id:: 6227ab55-ec12-4e3a-a354-4d57cce5c892
			- Every time you assign a value (make a `=`) or passing the parameter, they are copied the bits from the original variable to the destination. As know as **copied by value**.
			- ((6227ab55-2c94-4bc6-bb6d-4b2223996fa2))
		- **Static Nested class** #java #static-function
			- ```java
			   /** Returns the number of items in the list using recursion. */
			   public int size() {
			     /* Your Code Here! */
			     return size(first);
			   }
			   
			  private static int size(IntNode x) {
			     	if (x.next == null) {
			  	   	return 1;
			      }
			  	return 1 + size(x.next);
			  }
			  ```
	- ## Lecture 6: DDlists, Arrays
	  collapsed:: true
		- ### Two-sentinel or Circular Doubly Linked List #double-linked-list
			- Circular may be better style to implement the Doubly Linked List.
		- ### Generic Types #generic #java
			- Generics only work with reference types. If you need to instantiate a generic over a primitive type, use `Integer`, `Double`, `Character`, `Boolean`, `Long`, `Short`, `Byte`, or `Float` instead of their primitive equivalents.
		- ### Arrays vs. Classes #arrays #class #java
			- #### The key differences between memory boxes:
				- Array boxes are numbered and accessed using `[]` notation, and class boxes are named and accessed using dot notation.
				- Array boxes must all be the same type. Class boxes can be different types.
			- #### One particularly notable impact of these difference between memory boxes:
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
					- ```java
					  String fieldOfInterest = "mass";
					  Planet p = new Planet(6e24, "earth");
					  double mass = p.fieldOfInterest;	
					  ```
				- There is a way to specify desired fields at runtime call *reflection* ((6227ab55-bb8a-4ef6-b3aa-03ff311acc1c))
			- Cannot use dot notation at runtime in Java, use *reflection* instead. #reflection #java
			  id:: 6227ab55-bb8a-4ef6-b3aa-03ff311acc1c
				- In Java, it is considered very bad coding style for typical programs (reflection).
				- In general, programming languages are partially designed to limit the choices of programmers to make code simpler to reason about. By restricting these sorts of features to the special Reflections API, we make typical Java programs easier to read and interpret.
				- [Oracle Refection](https://docs.oracle.com/javase/tutorial/reflect/member/fieldValues.html)
		- **Java Arrays vs. Other Languages** #language-comparison
			- Have no special syntax for "slicing" (such as in Python).
			- Cannot be shrunk or expanded (such as in Ruby).
			- Do not have member methods (such as in JavaScript).
			- Must contain values only of the same type (unlike Python).
	- ## Lecture 7: Alists, Resizing, vs. SLists
	  collapsed:: true
		- **Alists:**
			- `AList` is an array based list to make `get()` method more quickly which compared to `DDList`.
		- **Resizing:**
			- To make sure we have enough capacity to accommodate the new data. We need to build a new array for storing them.
			- When dealing with resizing, an `AList` should not only be efficient in time, but also efficient in space.
				- Define the "usage ratio" `R = size / items.length`
				- Typical solution: Half array size when R < 0.25
		- **Generic `AList`:** #java #generic
			- Java does not allow to create an array of generic objects due to an obscure issue with the way generics are implemented.
			- We cannot do:
			  ```java
			  Item[] items = new Item[8];
			  ```
			- Instead, we have to use `casting`:
			  ```java
			  Item[] items = (Item[]) new Object[8];
			  ```
			- This will yield a compilation warning, but it's ok.
		- **Nulling out deleted items:** #java #memory #garbage-collect #null
			- When storing objects, we'd better to set unwanted objects to `null`. Otherwise, as we keep references to unneeded objects, Java will not garbage collect the objects and will waste memory.
		- ### Double Array List
			- LATER project 1a
			  :LOGBOOK:
			  CLOCK: [2022-03-20 Sun 16:41:29]--[2022-03-20 Sun 16:41:30] =>  00:00:01
			  CLOCK: [2022-03-20 Sun 16:41:31]--[2022-03-20 Sun 16:41:32] =>  00:00:01
			  :END:
	- ## Lecture 8: Inheritance, Implements #inheritance #java
	  collapsed:: true
		- ### **Override vs. Overloading:** #override #overload
			- **Overloading:** Methods with the same name but different signatures.
			- **Overriding:**
				- If a "subclass" has a method with the exact same signature as in the "superclass", we say the subclass **overrides** the method.
				- Even if you don't write @Override, subclass still overrides the method.
				- We should always mark every overriding method with the **@Override** annotation (although it's optional).
				- The only effect of this tag is that the code won't compile if it is not actually an overriding method.
				- Why use @Override?
					- Protests against typos.
					- Reminds programmer that method definition came from somewhere higher up in the inheritance hierarchy.
		- ### **Static Type vs. Dynamic Type:**
			- Every variable in Java has a "compile-time type", a.k.a. "static type".
				- This is the type specified at **declaration**. Never changes!
			- Variables also have a "run-time type", a.k.a. "dynamic type".
				- This is the type specified at **instantiation** (e.g. when using `new`).
				- Equal to the type of the object being pointed at.
			- Suppose we call a method of an object using a variable with:
				- compile-time type X
				- run-time type Y
			- Then if Y **overrides** the method, Y's method is used instead.
				- This is known as "dynamic method selection".
			- **IMPORTANT:** This does not work for overloaded methods!
				- ![image.png](../assets/image_1647381992175_0.png)
			- Dynamic method selection only happens for **overridden** methods.
				- When instance method of subtype overrides some method in supertype.
			- Dynamic method selection does not happen for **overloaded** methods.
				- When some other class has two methods, one for the supertype and one for the subtype.
				- Example: peek(SLList) vs. peek(List61B)
		- ### Interfaces
			- > An interface is a formal contract between a class and the outside world.
		- ### **Interface Inheritance vs. Implementation Inheritance:**
			- **Interface Inheritance:**
				- Refers to a relationship in which a subclass inherits all the methods/behaviors of the superclass. The interface includes all the method signatures, but not implementations. It's up to the subclass to actually provide those implementations.
				- Allows you to generalize code in a powerful, simple way.
			- **Implementation Inheritance:**
				- Refers to when you include `default` keyword and implement a real method.
				- Allows code-reuse: Subclasses can rely on superclasses or interfaces.
				- Gives another dimension of control to subclass designers: Can decide whether or not to override default implementations.
			- **Important:** In both cases, we specify "is-a" relationships, not "has-a".
				- Good: Dog implements Animal.
				- Bad: Cat implements Claw.
		- ### **The Dangers of Implementation Inheritance:**
			- Makes it harder to keep track of where something was actually implemented.
			- Rules for resolving conflicts can be arcane. (what if two interfaces both give conflicting default methods?)
			- Encourages overly complex code (Has-a vs. Is-a)
			- Breaks encapsulation!
	- ## Lecture 9: Extends, Casting, Higher Order Functions #inheritance #java
	  collapsed:: true
		- Constructors are not inherited. However, Java will automatically make a call to the superclass's *no-argument* constructor. If you need to involve parameters in the super constructor, you have to call `super(x)` explicitly.
		- Every class extends from `Object`. Interfaces don't extends from `Object`.
		- The `Object` class provides operations that every `Object` should be able to do - like `.equals(Object obj)`, `.hashCode()`, and `toString()`.
		- Never use "Has-a" relationship, use "Is-a".
		- ### Complexity: The Enemy #abstraction #software-construction
		  collapsed:: true
			- Hierarchical abstraction.
				- Create **layers of abstraction**, with clear abstraction barriers!
			- "Design for change" (D.Parnas)
				- Organize program around objects.
				- Let objects decide how things are done.
				- **Hide information** others don't need.
		- ### Inheritance Breaks Encapsulation
		  collapsed:: true
			- ![image.png](../assets/image_1647963350595_0.png)
			- ![image.png](../assets/image_1647963365590_0.png)
		- ### Dynamic Method Selection
		  collapsed:: true
			- If overridden, decide which method to call based on **run-time** type of variable (Also called dynamic type).
			- ![image.png](../assets/image_1647968210720_0.png)
		- ### Compile-Time Type Checking
		  collapsed:: true
			- Compiler allows method calls based on **compile-time** type of variable (Also called static type).
			- Compiler also allows assignments based on compile-time types.
			- Compiler plays it as safe as possible with type checking.
			- ![image.png](../assets/image_1647968240215_0.png)
		- ### Casting
		  collapsed:: true
			- In Java, every object has a static type (defined at compile-time) and a dynamic type (defined at run-time). Our code may rely on the fact that some variable may be a more specific type than the static type.
			- Tells Java to treat expression as having a different compile-time type.
			- Effectively tells the compiler to ignore its type checking duties.
		- ### Higher Order Functions #functional-programming #language-comparison
		  collapsed:: true
			- Higher Order Function: A function that treats another function as data. (e.g. takes a function as input)
			- Old School (Java 7 and earlier): Memory boxes cannot contain pointers to functions.
			- LATER In modern Java, we can just write:
			- We can using inheritance to work around even when Java doesn't allow to do it directly:
				- In Python:
				  ```python
				  def tenX(x):
				    	return 10*x
				    
				  def do_twice(f, x):
				    	return f(f(x))
				  ```
				- In Old Java:
				  ```java
				  public interface IntUnaryFunction {
				    	int apply(int x);
				  }
				  
				  public class TenX implements IntUnaryFunction {
				    	public int apply(int x) {
				        	return 10 * x;
				      }
				  }
				  
				  public class HoFDemo {
				    	public static int do_twice(IntUnaryFunction f, int x) {
				        return f.apply(f.apply(x));
				      }
				  }
				  ```
		- ### Implementation Inheritance Cheatsheet
			- VengefulSLList extends SLList means a VenglefulSLList is-an SLList. Inherits all members!
				- Variables, methods, nested classes.
				- Not constructors.
				- Subclass constructor must invoke superclass constructor first.
				- Use super to invoke overridden superclass methods and constructors.
			- Invocation of overridden methods follows two simple rules:
				- Compiler allows memory box to hold any subtype.
				- Compiler plays it safe and only lets us do things allowed by **static** type.
				- For <ins>overridden</ins> methods (does not apply to **overloaded** methods) the actual method invoked is based on **dynamic** type  of invoking expression, e.g. Dog.maxDog(d1, d2).bark();
					- Everything else is based on static type, including overloaded methods.
				- Can use casting to overrule compiler type checking.
			- **Note: overloaded methods do not apply to dynamic type selection!!!**
			- **My way:**
				- First, using static check to make sure all variables and arguments types are matched.
				- Second, make sure the method exists and correct, record this specific function and check out all override function.
				- Lastly, doing dynamic selection, if there is an override function, execute it instead.
					- e.g. 
					  ```java
					  Class Dog extends Animal {
					  }
					  Dog d = new Dog();
					  ((Animal) d).makeNoise(d);
					  ```
					- Type-casting only affect at compile checking period. (static typing checking time)
					- When checking to see if a method exists in Animal, do we check for a `makeNoise(Dog)` method or a `makeNoise(Animal)` method? Yes. In particular, the compiler sees if ANY method exists that accepts Dog. If it happens to have both, then it???ll use `makeNoise(Dog)` because this is the most specifi**c version. THIS IS TOTALLY DISTINCT FROM DYNAMIC METHOD SELECTION.** Has nothing to do with **overriding**.
					- If animal has only `makeNoise(Animal)`, and Dog has both `makeNoise(Animal)` and `makeNoise(Dog)` which gets called?
						- The compiler checks, see that `makeNoise(Animal)` exists, and RECORDS THIS AS **THE** method signature.
						- As a result, we will use `makeNoise(Animal)` (in the dog class, because it **overrides**).
			- #### Great example for **casting and typing**
				- {{youtube https://youtu.be/cUL1LWVv984}}
				- {{youtube-timestamp 7}}
			- some exercises:
				- [sp21 - Inheritance and Implements Exam Prep (best exercise)](https://sp21.datastructur.es/materials/discussion/examprep04sol.pdf)
				- https://tbp.berkeley.edu/exams/5990/download/#page=5
				- https://tbp.berkeley.edu/exams/5975/download/#page=5
	- ## LATER Lecture 10: Subtype Polymorphism vs. Higher order Functions (HoFs) #java
	  collapsed:: true
		- ### Hiding #hiding #java
			- What if a subclass has variables with the same name as a superclass?
			- What if subclass has a static method with the same signature as a superclass method?
				- For static methods, we do not use the term overriding for this.
			- These two practices above are called "hiding".
				- It is bad style.
				- There is no good reason to ever do this.
				- The rules for resolving the conflict are a bit confusing to learn.
		- ### Comparable and Comparator Summary #comparable-comparator
			- Interfaces provide us with the ability to make _**callbacks:**_
				- Sometimes a function needs the help of another function that might not have been written yet.
					- Example: max needs compareTo
					- The helping function is sometimes called a "callback".
				- Some languages handle this using explicit function passing.
				- In Java, we do this by wrapping up the needed function in an interface (e.g. `Arrays.sort` needs compare which lives inside the `comparator` interface)
				- `Arrays.sort` "calls back" whenever it needs a comparison.
					- Similar to giving your number to someone if they need information.
				- Since there's only room for one `compareTo` method, if we want multiple ways to compare, we must turn to `Comparator`.
		- ### Polymorphism #polymorphism
			- In Java, polymorphism refers to how objects can have many forms or types.
			- In object-oriented programming, polymorphism relates to how an object can be regarded as an instance of its own class, an instance of its superclass, an instance of its superclass's superclass, and so on.
			-
	- ## LATER Lecture 11: Exceptions, Iterators, Object Methods #java #object-methods
	  collapsed:: true
		- #### Iterator & Iterable #iterator #iterable
			- To support the enhanced for loop:
				- Add an `iterator()` method to your class that returns an `Iterator<T>`.
				- The `Iterator<T>` returned should have a useful `hasNext()` and `next()` method.
				- Add `implements Iterable<T>` to the line  defining your class.
			- Iterators are the actual object we can iterate over. An example of this would be an array - we can iterate through the object in the array. Iterables are object that can produce an iterator that somehow iterate over their contents. If we have a class called CS61b, it itself cannot be iterated over, but it can produce an iterator that iterates over all of the students in the class.
		- #### toString #performance #optimization
			- Adding even a single character to a string creates an entirely new string, it's will really slow. Since String in Java is immutable.
			- Using `stringBuilder()` or something to concatenate strings.
			- Using `String.join()` to make a nice string output.
			  `"{" + String.join(", ", listOfItems) + "}";`
		- #### equals
			- Make sure to deal with `null` and non-ArraySet arguments!
			- Used `getClass` to check the class of the passed object.
		- #### ArraySet.of()
			- In order to use `Set<Integer> javaset = Set.of(5, 23, 42);` we should write a function called `.of()`
			- ```java
			  // inside ArraySet class we create this static method
			  // the first Type is generic method type
			  // ... is varied arguments
			  public static <Type> ArraySet<Type> of(Type... stuff) {
			    	ArraySet<Integer> ret = new ArraySet<Type>();
			    	for (Type x : stuff) {
			        	ret.add(x);
			      }
			    	return ret;
			  }
			  ```
	- ## LATER Lecture 11-sp18: Libraries, Abstract Classes, Packages #java #interface #abstract-class
	  collapsed:: true
		- ### Interfaces vs. abstract classes:
			- #### Interfaces:
				- All methods must be public.
				- All variables must be public static final.
				- Cannot be instantiated.
				- All methods are by default abstract unless specified to be `default`.
				- Can implement more than one interface per class.
			- #### Abstract Classes:
				- Methods can be public or private.
				- Can have any types of variables.
				- Cannot be instantiated.
				- Methods are by default concrete unless specified to be `abstract`.
				- Can only implement one per class.
			- #### When to use an Interface vs. Abstract Class
				- > You can think of an interface as defining a "can-do" or an "is-a" relationship, whereas an abstract class should be stricter "is-a" relationship.
				- The difference can be subtle, and you can often use one instead of the other.
				- In practice, large Java libraries often have a hierarchy of interfaces, which are extended by abstract classes that provided default implementations for some methods, and which are in turn ultimately implemented by concrete classes.
				  > interface  -> ... -> interface -> abstract class (with default methods) -> concrete classes
				-
	- ## Lecture 12-sp18: Pre-Midterm1 Q&A #java
	  collapsed:: true
		- Comparing strings for equality using == vs. equals: #object #equal
			- For reference types, we should use `.equals` to compare.
			- For primitive types, we can use `==` to compare.
			- **Note:** When two object are both `null`, `.equal()` will return `true`. So check they are not null before comparing if needed.
			- ((6227ab55-ec12-4e3a-a354-4d57cce5c892))
		- In a non-destructive method which involves change or creation, it is impossible not to use new. We must create a new object for storing.
		- What can static methods access and not access? For a class X: #static-function
			- Static methods of X can access other static members of X.
			- Static methods of X cannot access instance members of "the current X", i.e. you can't do `this.value`, and can't do `this.addFirst()`.
			- Static method **CAN** instantiate Xs.
		- When called super constructor explicitly? #inheritance
			- If you want to use a different super class constructor, e.g. `super(int a, int b)`.
			- In a subclass, the no-argument super class constructor is automatically called.
			- If you create a one or more argument constructor, your free no-argument constructor is not given.
			- If super class doesn't have any no-argument constructor, then compile error result.
	- ## LATER Lecture 13-sp18: Generics, Autoboxing #java
	  collapsed:: true
		- ### Generics: #generic
			- There are **generic classes** and **generic methods**.
			- You can make only method generic.
				- ```java
				  public <K, V> K someFunction(K key, V value) {}
				  ```
			- Type upper bounds (e.g. `K` extends `Comparable<K>`).
		- ### Autoboxing #autoboxing
			- Primitives cannot be used as actual type arguments, each primitive type, there is a corresponding reference type called a wrapper class.
			- Wrapper types and primitives can be used almost interchangeably.
			- Arrays are never autoboxed/unboxed, e.g. an `Integer[]` cannot be used in place of an `int[]` (or vice versa).
			- Autoboxing/unboxing incurs a measurable performance impact!
			- Wrapper types use MUCH more memory than primitive types.
		- ### Immutability #immutable
			- Pros: Avoids bugs and makes debugging easier.
			- Cons: Must create a new object anytime anything changes.
			- Warning: Declaring a reference as **Final** does not make object immutable.
	- ## LATER Lecture 15-sp18: Packages, Access Control, Objects #java
	  collapsed:: true
		- ### Packages
			- #### To address the fact that classes might share names:
				- A package is a **namespace** that organizes classes and interfaces.
				- Naming convention: Package name starts with website address (backwards).
			- #### Using packages
				- To use a class from package A in a class from package B, we use the **canonical name**.
				- By using an **import** statement, we can use the **simple name** instead.
			- #### The Default Package
				- Any Java class without a package name at the top are part of the "default" package.
				- > You should avoid using the default package except for very small example programs.
				- Ensure that we never have two classes with the same name.
				- **Note:** You cannot import code from the default package!
		- ### JAR Files
			- Sharing dozens of `.class` files in special directories is annoying.
			- Can instead share a single `.jar` file that contains all of your `.class` files.
			- JAR files are really just zip files, but with some extra info added.
				- They do not keep your code sage!
				- Easy to unzip and transform back into `.Java` files.
			- Can run a "Main class" of a package from command line.
		- ### Build Systems
			- Ant
			- Maven
			- Gradle
		- ### Access Control
			- ![image.png](../assets/image_1648479148144_0.png)
			- #### Package Private
				- This is the default access given to Java members if there is no explicit modifier written.
			- #### Why was Java designed to have the top table instead of the bottom one?
				- Extending classes you didn't write is common.
				- Packages are typically modified only by a specific team of humans.
			- #### Access is Based Only on Static Types
				- For interfaces, the default access for its methods is actually public, and not package-private. Additionally, like this subtitle indicates, the access depends only on the static types.
			-
	- ## Lecture 16-sp18: Encapsulation, Lists, Delegation vs. Extension
	  collapsed:: true
		- ### Efficient Programming:
			- 1. Programming cost.
			  2. Execution cost.
		- ### Some helpful Java features for efficient programming #java #optimization
			- #### Packages:
				- **Pros:** Organizing, making things package private.
				- **Cons:** Specific.
			- #### Static type checking:
				- **Pros:** Checks for errors early, reads more like a story.
				- **Cons:** Not too flexible, (casting).
			- ### Inheritance:
				- **Pros:** Reuse of code.
				- **Cons:** "Is-a", the path of debugging gets annoying, can't instantiate, implement every method of an interface.
		- ### Delegation vs. Extension:
			- Write a `Stack` class using `Linked List` as its underlying data structure. Implement a single function: `push(Item x)`. There are three popular solutions:
			- **Solutions 1:** This solution uses extension. It simply borrow the methods from `LinkedList<Item>` and uses them as its own.
				- ```java
				  public class ExtensionStack<Item> extends LinkedList<Item> {
				  	public void push(Item x) {
				        	add(x);
				      }
				  }
				  ```
			- **Solutions 2:** This approach uses Delegation. It creates a `Linked List` object and calls its methods to accomplish its goal.
				- ```java
				  public class DelegationStack<Item> {
				    	private LinkedList<Item> L = new LinkedList<Item>();
				    	public void push(Item x) {
				        	L.add(x);
				      }
				  }
				  ```
			- **Solution 3:** This approach is similar to the previous one, except it can use any class that implements the `List` interface (`Linked List, ArrayList`, etc.)
				- ```java
				  public class StackAdapter<Item> {
				    	private List L;
				    	public StackAdapter(List<Item> worker) {
				        	L = worker;
				      }
				    	public void push(Item x) {
				        	L.add(x);
				      }
				  }
				  ```
			- #### Extension:
				- Extensions tends to be used when you know what is going on in the parent class. In other words, you know how the methods are implemented. Additionally, with extension, you are basically saying that the class you are extending from acts similarly to the one that is doing the extending.
			- #### Delegation:
				- Delegation is when you do not want to consider your current class to be a version of the class that you are pulling the method from.
	- ## Lecture 12: Command Line Programming, Git
	  collapsed:: true
		- ### Command Line Compilation #cl
		- ### Git: A Command Line Tool #git
			- The git tool we've been using is a command line program.
				- Written in C.
				- Unlike Java, C code is typically compiled into a binary which doesn't require an interpreter.
				- Thus, instead of saying `java git status`, we just type `git status`.
		- #### Git #git
			- LATER Implement Git using Java/Rust.
			- Use a "Hash" as the Version Number.
				- The actual approach employed by Git is to use the "git-SHA1 hash" of a file as its version number.
					- The git-SHA1 hash is a deterministic function of the file's contents.
						- Two identical files will always have the same git-SHA1 hash.
						- git-SHA1 hash is 160 bit long.
				- Might have "collision" problem.
			- Added Benefit of SHA1-Hashing: Security
				- Git uses the git-SHA1 hash to verify file integrity.
				- Hard to sneak in a security vulnerability into a git repository.
			- #### Git Commits
				- Every commit in git stores (at least):
					- An author.
					- A date.
					- A commit message.
					- A list of all files and their versions.
						- Versions are git-SHA1 hashes.
					- The parent's commit ID.
				- The commit ID is the git-SHA1 hash of the commit.
					- You might object: "A commit is an object, not a file."
					- Imagine a file containing the author, date, commit message, list of files and their versions, and parent ID, then git-SHA1 hash that.
				- ```java
				  public class Commit {
				    	public String author;
				    	public String date;
				    	public String commitMessage;
				    	public String parentID;
				    	...
				  }
				  ```
				- Java has a built-in feature called `Serializable` that lets you store arbitrary objects. #java #serializable
					- Easy to use: Just make your class implement `Serializable`.
					- Then use our `Utils` class to write/read objects to/from files.
	- ## Lecture 13: Asymptotics I #algorithm #complexity
	  collapsed:: true
		- ### Big-O notation
		- ### Big-theta notation
	- ## Lecture 14: Disjoint Sets #union-find
	  collapsed:: true
		- ### Quick Find
			- Store connected components as set ids.
		- ### Quick Union
			- Store connected components as parent ids.
		- ### Weighted QuickUnion
			- Modify quick-union to avoid tall trees.
			- Also track the size of each set, and use size to decide on new tree root.
			- **vs. Heighted QuickUnion:** `connect()` function will be much more complex for Heighted QuickUnion.
		- ### Path Compression
			- On calls to `connect()` and `isConnected()`, set parent id to the root for all items seen.
		- |Implementation   | Runtime |
		  |---|---|
		  | ListOfSetsDS | O(NM) |
		  | QuickFindDS  | ??(NM)  |
		  | QuickUnionDS  | O(NM)  |
		  | WeightedQuickUnionDS |  O(N + M log N) |
		  |  WeightedQuickUnionDSWithPathCompression | O(N + M ??(N))  |
			- Runtimes are given assuming:
				- We have a DisjointSets object of size N.
				- We perform M operations, where an operation is defined as either a call to connected or isConnected.
	- ## Lecture 15: Asymptotics II #algorithm #complexity
		- ### There is no magic shortcut for runtime complexity problems.
			- Runtime analysis often requires careful thought.
			- Remember these two math:
				- `1 + 2 + 3 + ... + Q = Q(Q+1)/2 = ??(Q^2)` Sum of First Natural Numbers.
				- `1 + 2 + 4 + ... + Q (Q is a power of 2) = 2Q - 1 = ??(Q)` Sum of First Powers of 2.
			- Strategies:
				- Find exact sum.
				- Write out examples.
				- Draw pictures.
		- Different solutions to the same problem, e.g. sorting, may have different runtimes.
			- In practice, log time nearly constant time.
			- `N^2` vs. `N logN` is an enormous difference.
			- Going from `N logN` to `N` is nice, but not a radical change.
	- ## Lecture 16: ADTs, Sets, Maps, BSTs #algorithm #bst
	  collapsed:: true
		- ### Java Libraries:
			- ![image.png](../assets/image_1649520849629_0.png)
		- ### How to get `Tree` data structure intuitively
			- ![image.png](../assets/image_1649520932890_0.png)
			- ![image.png](../assets/image_1649520946203_0.png)
			- ![image.png](../assets/image_1649521020151_0.png)
			- ![image.png](../assets/image_1649521083800_0.png)
			- ![image.png](../assets/image_1649521099031_0.png)
			-
	- ## Lecture 17: B-Trees (2-3, 2-3-4 Trees) #algorithm #b-tree
	  collapsed:: true
		- BSTs have:
			- Worst case `??(N)` height.
			- Best case `??(log N)` height.
			- `??(log N)` height if constructed via random inserts.
			  id:: 6254f327-f6f3-4765-8bf9-16cea9f8e2ff
		- Real World BSTs:
			- Random trees have `??(log N)` average depth and height, they are bushy, not spindly.
			- But bad news: We can't always insert our items in a random order.
				- Data comes in over time, don't have all at once.
		- ### B-Tree
			- Splitting tree is a better name for B-tree.
			- `L`: Max number of items per node.
			- B-trees of order `L=3` are also called a 2-3-4 tree or a 2-4 tree.
			- B-trees of order `L=2` are also called a 2-3 tree.
			- B-trees are most popular in two specific contexts:
				- Small L (`L=2` or `L=3`): Used as a conceptually simple balanced search tree.
				- `L` is very large (say thousands): Used in practice for databases and filesystems (i.e. systems with very large records).
			- #### Two nice invariants:
				- All leaves must be the same distance from the source.
				- A non-leaf node with `k` items must have exactly `k+1` children.
			- These invariants guarantee the tree to be bushy.
			- Tree height: Between `~logL+1(N)` and `~log2(N)`.
				- Largest possible height is all non-leaf nodes have `1` item.
				- Smallest possible height is all nodes have `L` items.
				- Overall height is therefore `??(log N)`.
		- ### Summary:
			- BSTs have best case height `??(log N)`, and worst case height `??(N)`
			- B-Trees are a modification of the binary search tree that avoids `??(N)` worst case.
	- ## Lecture 18: Red Black Trees #algorithm #rb-tree
		- 2-3 trees are a real pain to implement, and suffer from performance problem.
		- > "Beautiful algorithms are, unfortunately, not always the most useful." - Knuth
		- `LLRB`: Left-leaning Red Black Binary Search Tree.
		- 2-3 Tree and LLRB are structurally identical.
		- ### Building red-black BST:
			- When inserting: Use a red link.
			- If there is a right leaning "3-node", we have a **Left Leaning Violation**.
				- _Rotate left_ the appropriate node to fix.
			- If there are two consecutive left links, we have an **Incorrect 4 Node Violation**.
				- _Rotate right_ the appropriate node to fix.
			- If there are any _nodes with two red children_, we have a **Temporary 4 Node**.
				- _Color flip_ the node to emulate the split operation.
			- #### So rules:
				- Right red link -> rotate left
				- Two consecutive left links -> rotate right
				- Red left and red right -> color filp
		- ### Search Trees Summary:
			- **Binary search trees** are simple, but they are subject to imbalance.
			- **2-3 Trees (B Trees)** are balanced, but painful to implement and relatively slow.
			- **LLRBs** insertion is simple to implement (but delete is hard).
			- Java's TreeMap is a re-black tree (not left leaning).
				- Maintains correspondence with 2-3-4 tree (is not a 1-1 correspondence).
				- Allows glue links on either side.
				- More complex implementation, but significantly faster.
		- ### More:
			- Other self balancing trees: AVL trees, splay trees, treaps, etc. There are at least hundreds of different such trees.
			- There are other efficient ways to implement sets and maps entirely.
				- Other linked structures: Skip lists are linked lists with express lanes.
				- Other ideas entirely: Hashing is the most common alternative.
		-
- # Discussion
	- ## Linked Lists
	  collapsed:: true
		- ### Even Odd #algorithm #linked-list
		  collapsed:: true
			- Implement the method evenOdd by destructively changing the ordering of a given
			  `IntList` so that even indexed links **precede** odd indexed links.
			  
			  For instance, if `lst` is defined as `IntList.list(0, 3, 1, 4, 2, 5)`, `evenOdd(lst)`
			  would modify `lst` to be `IntList.list(0, 1, 2, 3, 4, 5)`.
			  
			  **Hint:** Make sure your solution works for lists of odd and even lengths.
			- ```java
			  public static void evenOdd(IntList lst) {
			    	if (lst == null || lst.rest == null) {
			        	return;
			      }
			    
			    	IntList oddList = lst.rest;
			    	IntList second = lst.rest;
			    	
			    	while (lst.rest != null && oddList.rest != null) {
			        	lst.rest = lst.rest.rest;
			        	oddList.rest = oddList.rest.rest;
			        	lst = lst.rest;
			        	oddList = oddList.rest;
			      }
			    
			    	lst.rest = second;
			  }
			  ```
		- ### Partition #algorithm #linked-list
		  collapsed:: true
			- Implement `partition`, which takes in an `IntList lst` and an integer `k`, and _destructively_ partitions `lst` into `k`  `IntLists` such that each list has the following
			  properties:
			  
			      1. It is the **same** length as the other lists. If this is not possible, i.e. `lst` cannot
			  be equally partitioned, then the later lists should be **one** element smaller.
			  For example, partitioning an `IntList` of length 25 with k = 3 would result in
			  partitioned lists of lengths 9, 8, and 8.
			      2. Its ordering is consistent with the ordering of `lst`, i.e. items in earlier in `lst`
			  must **precede** items that are later.
			  
			  These lists should be put in an array of length `k`, and this array should be returned.
			  For instance, if `lst` contains the elements 5, 4, 3, 2, 1, and k = 2, then a **possible**
			  partition (note that there are many possible partitions), is putting elements 5, 3, 2
			  at index 0, and elements 4, 1 at index 1.
			  
			  You may assume you have the access to the method `reverse`, which destructively reverses the ordering of a given `IntList` and returns a pointer to the reversed `IntList`.
			  You may not create any `IntList` instances. You may not need all the lines.
			  
			  **Hint**: You may find the % operator helpful.
			- ```java
			  public static IntList[] partition(IntList lst, int k) {
			  	IntList[] array = new IntList[k];
			  	int index = 0;
			  	IntList L = reverse(lst);
			    
			  	while (L != null) {
			        	// take previous IntList
			  		IntList prevAtIndex = array[index];
			        	// Store next IntList
			  		IntList next = L.rest;
			        	// replace current IntList
			  		array[index] = L;
			  		array[index].rest = prevAtIndex;	
			        	L = next;
			        	//modify index at one single line
			  		index = (index + 1) % array.length; 
			      }
			    
			  	return array;
			  }
			  ```
		- ### `Insert` and `Reverse` method in `Linked List` #linked-list #algorithm
		  collapsed:: true
			- ```java
			  public class SLList {
			    	private class IntNode {
			        	public int item;
			        	public IntNode next;
			        	public IntNode(int item, IntNode next) {
			            	this.item = item;
			            	this.next = next;
			          }
			      }
			    
			    	private IntNode first;
			    
			    	public void addFirst(int x) {
			        	first = new IntNode(x, first);
			      }
			  }
			  ```
			- Implement `SLList.insert`. (5 -> 6 -> 2, insert(10, 1) results in 5 -> 10 -> 6 -> 2)
				- ```java
				  public void insert(int item, int position) {
				    	if (this.first == null || position == 0) {
				        	this.addFirst(item);
				      }
				    	
				    	IntNode curr = first;
				    	while (position > 1 && curr.next != null) {
				        	position--;
				        	curr = curr.next;
				      }
				    	
				    	IntNode insertedNode = new IntNode(item, curr.next);
				    	curr.next = insertedNode;
				  }
				  ```
			- Implement `reverse()` method **recursively**.
				- ```java
				  public void reverse() {
				    	this.first = reverseHelper(this.first);
				  }
				  
				  private IntNode reverseHelper(IntNode node) {
				    	if (node == null || node.next == null) {
				        	return node;
				      }
				    
				    	IntNode reversed = reverseHelper(nodex.next);
				    	node.next.next = node; // move the first one to the last position
				    	node.next = null; // cut the connection to others
				    	return reversed;
				  }
				  ```
			- Implement `reverse()` method **iteratively**.
				- ```java
				  public void reverse() {
				    	IntNode frontOfReversed = null;
				    	IntNode nextNodeToAdd = this.first;
				    	
				    	while (nextNodeToAdd.next != null) {
				        	// replace each pointer consequentially
				        	IntNode remaiderOfOriginal = nextNodeToAdd.next;
				        	nextNodeToAdd.next = frontOfReversed;
				        	frontOfReversed = nextNodeToAdd;
				        	nextNodeToAdd = remainderOfOriginal;
				      }
				    
				    	this.first = frontOfReversed;
				  }
				  ```
		- ### Remove Duplicates #algorithm #linked-list
		  collapsed:: true
			- ```java
			  public class IntList {
			    	public int first;
			    	public IntList rest;
			    	public IntList (int f, IntList r) {
			        	this.first = f;
			        	this.rest = r;
			      }
			    
			    	/**
			      * Given a sorted linked list of items - remove duplicates.
			      * For example given 1 -> 2 -> 2 -> 2 -> 3,
			      * Mutate it to become 1 -> 2 -> 3 (destructively)
			      */
			    	public static void removeDuplicates(IntList p) {
			        	if (p == null) {
			            	return;
			          }
			        
			        	IntList current = p.rest;
			        	IntList previous = p;
			        	while (current != null) {
			            	if (current.first == previous.first) {
			                	previous.next = current.next;
			              } else {
			                	previous = current;
			              }
			            current = current.rest;
			          }
			      }
			  }
			  ```
	- ## Abstract Data Types / Data Structures #data-structure
	  collapsed:: true
		- ### Solving problems with ADTs
			- Given an unsorted array of integers, return the array sorted from least to
			  greatest. #priority-queue
				- Use a priority queue. For each integer in the unsorted array, enqueue the
				  integer with a priority equal to its value. Calling dequeue will return the
				  largest integer; therefore, we can insert these values from index length-1 to 0
				  into our array to sort from least to greatest.
			- Implement the forward and back buttons for a web browser. #stack
				- Use two stacks, one for each button. Each time you visit a new web page,
				  add the previous page to the back button???s stack. When you click the back
				  button, add the current page to the forward button stack, and pop a page from
				  the back button stack. When you click the forward button, add the current
				  page to the back button stack, and pop a page from the forward button stack.
				  Finally, when you visit a new page, clear the forward button stack.
		- #### Define a `Queue` class that implements the `push` and `poll` methods of a queue ADT using only a `Stack` class which implements the stack ADT. #algorithm #queue #stack #java
		  collapsed:: true
			- ```java
			  // Two stacks
			  public class Queue<E> {
			    	private Stack<E> stack = new Stack<>();
			    	
			    	public void push(E element) {
			        	stack.push(element);
			      }
			    
			    	public E pop() {
			        	Stack<E> temp = new Stack<>();
			        	while (!stack.isEmpty()) {
			            	temp.push(stack.pop());
			          }
			        	E toPop = temp.pop();
			        	while (!temp.isEmpty()) {
			            	stack.push(temp.pop());
			          }
			        	return toPop;
			      }
			  }
			  ```
			- [#A] Using only one stack and recursion #recursion
			- ```java
			  
			  public class Queue {
			    	private Stack<E> stack = new Stack<>();
			    
			    	public void push(E element) {
			        	stack.push(element);
			      }
			    	
			    	public E pop() {
			        	return pop(stack.pop());
			      }
			    
			    	private E pop(E previous) {
			        	if (stack.isEmpty()) {
			            	return previous;
			          }
			        	E current = stack.pop();
			        	E toReturn = pop(current);
			        	push(previous);
			      }
			  }
			  ```
		- #### Using Java build-in data structures to find the `k` least common words in a document. #map #priority-queue #java
			- Keep a count of all the words in the document using a `HashMap <String, Integer>`. After we go through all of the words, each word will be mapped to how many times it???s appeared. What we can then do is put all the words into a `MaxPriorityQueue<String>`, using a custom comparator that compares words based on the counts in the HashMap. We can then pop off the `k` most common words by just calling `poll()` on the MaxPriorityQueue `k` times.
			- ```java
			  public static void topKPopularWords(String[] words, intk) {
			    	Map<String, Integer> counts = new HashMap<>();
			    
			    	for (String s: words) {
			        	if (!counts.contains(s)) {
			            	counts.put(s, 1);
			          } else {
			            	counts.put(s, counts.get(s) + 1);
			          }
			      }
			    
			    	// We can create a costomized comparator to Priority Queue
			    	// Using lambda
			    	PriorityQueue<String> pq = new PriorityQueue<>(new Comparator<String>() {
			        	@Override
			        	public int compare(String a, String b) {
			            	return counts.get(b) - counts.get(a);
			          }
			      });
			    
			    	for (String s : counts.keySet()) {
			        	pq.add(s);
			      }
			    	
			    	for (int i = 0; i < k; i++) {
			        	System.out.println(pq.poll());
			      }
			  }
			  ```
	- ## Selecting ADTs
	  collapsed:: true
		- ### Design a Parking Lot #priority-queue
		  collapsed:: true
			- Design a ParkingLot package that allocates specific parking spaces to cars in a smart way. Decide what classes you???ll need, and design the API for each. Time permitting, select data structures to implement the API for each class. Try to deal with annoying cases (like disobedient humans).
				- Parking spaces can be either regular, compact, or handicapped-only.
				- When a new car arrives, the system should assign a specific space based on the type of car.
				- All cars are allowed to park in regular spots. Thus, compact cars can park in both compact spaces and regular spaces.
				- When a car leaves, the system should record that the space is free.
				- Your package should be designed in a manner that allows different parking lots to have different numbers of spaces for each of the 3 types.
				- Parking spots should have a sense of closeness to the entrance. When parking a car, place it as close to the entrance as possible. Assume these distances are distinct.
			- Car:
				- ```java
				  public class Car {
				    	// creates a car with given size and permissions
				    	public Car(boolean isCompact, boolean isHandicapped);
				    	// returns whether or not a car fit in a compact space
				    	public boolean isCompact();
				    	// returns whether or not a car may park in a handicapped space
				    	public boolean isHandicapped();
				    	// attempts to park this car in a spot, returning true if successful
				    	public boolean findSpotAndPark(ParkingLot lot);
				    	// vacates this car's spot
				    	public void leaveSpot();
				  }	
				  ```
			- Spot:
				- ```java
				  // The Spot class can be declared private and encapsulated by the 
				  // ParkingLot class.
				  private class Spot {
				  	// creates a spot of a given type and proximity.
				    	private Spot(String type, int proximity);
				    	// returns true if this is reserved for handicapped drivers.
				    	private boolean isHandicapped();
				    	// returns true if this parking space can only accomodate compact cars.
				    	private boolean isCompact();
				  }
				  ```
			- Parking Lot:
				- ```java
				  public class ParkingLot {
				    	// creates a parking lot containing handicappedDistances.length
				    	// handicapped spaces, each with a distance corresponding to an
				    	// element of handicappedDistances. Also initializes the 
				    	// appropriate compact and regular spaces.
				    	public ParkingLot(int[] handicappedDistances, 
				                        int[] compactDistances,
				                        int[] regularDistances);
				    	// attempts to find a spot and park the given car. Returns
				    	// false if no spots are available.
				    	public boolean findSpotAndPark(Car toPark);
				    	// records when a spot has been vacated, and makes the spot
				    	// avaiable for parking again.
				    	public void removeCarFromSpot(Car toRemove);
				  }
				  ```
			- Prioritization of closeness in parking space selection can be handled using several priority queues (one for each kind of parking space). Occupied spaces (which are dequeued when they are assigned) can be tracked with a `Map<Car, Spot>`.
		- ### AltList #linked-list
		  collapsed:: true
			- A normal generic linked list contains objects of only one type. But we can imagine a generic
			  linked list where entries alternate between two types. AltList is an implementation of such a
			  data structure:
			- ```java
			  public class AltList<X, Y> {
			    	private X item;
			    	private AltList<Y, X> next;
			    
			    	AltList(X item, AltList<Y, X> next) {
			        	this.item = item;
			        	this.next = next;
			      }
			  }
			  ```
			- Let???s construct an AltList instance:
			- ```java
			  AltList<Integer, String> list = 
			    	new AltList<Integer, String>(5, 
			  		new AltList<String, Integer>("cat",
			              new AltList<Integer, String>(10, 
			                  new AltList<String, Integer>("dog", null))));
			  ```
			- This list represents `[5 cat 10 dog]`. In this list, assuming indexing begins at 0, all even-index
			  items are `Integers` and all odd-index items are `String`s.
			- Write an instance method called `pairsSwapped()` for the `AltList` class that returns a copy
			  of the original list, but with adjacent pairs swapped. Each item should only be swapped once. This method should be non-destructive: it should not modify the original `AltList` instance.
			- For example, calling list.pairsSwapped() should yield the list [cat 5 dog 10]. There were two swaps: "cat" and 5 were swapped, then "dog" and 10 were swapped. You may assume that the list on which pairsSwapped() is called has an even non-zero length. Your code should maintain this invariant.
			- **Solution:**
			- ```java
			  public class AltList<X, Y> {
			    	// ... continued from above
			    
			    	public AltList<Y, X> pairsSwapped() {
			        	AltList<Y, X> ret = new AltList<Y, X>(next.item, new AltList<X, Y>(item, null));
			        	if (next.next != null) {
			            	ret.next.next = next.next.pairsSwapped();
			          }
			        	return ret;
			      }
			  }
			  ```
	- ## Iterable/Iterator
	  collapsed:: true
		- ### Filtered List #linked-list #iterator #iterable #lazy-calculation
		  collapsed:: true
			- We want to make a `FilteredList` class that selects only certain elements of a `List`
			  during iteration. To do so, we???re going to use the `Predicate` interface defined below.
			  Note that it has a method, `test` that takes in an argument and returns `True` if we
			  want to keep this argument or `False` otherwise.
			- ```java
			  public interface Predicate<T> {
			    	boolean test(T x);
			  }
			  ```
			- For example, if L is any kind of object that implements `List<String>` (that is, the
			  standard `java.util.List`), then writing
			  `FilteredList<String> FL = new FilteredList<>(L, filter);`
			  gives an `iterable` containing all items, `x`, in `L` for which `filter.test(x)` is `True`.
			  Here, `filter` is of type `Predicate`. Fill in the `FilteredList` class below.
			- **Solution 1: (More efficient)**
			- ```java
			  import java.util.*;
			  public class FilteredList<T> implements Iterable<T> {
			    	private List<T> list;
			    	private Predicate<T> filter;
			    	
			    	public FilteredList (List<T> L, Predicate<T> filter) {
			        	this.list = L;
			        	this.filter = filter;
			      }
			    
			    	@Override
			    	public Iterator<T> iterator() {
			        	return new FLIterator();
			      }
			    	
			    	private class FLIterator() implements Iterator<T> {
			        	int index;
			        
			        	public FLIterator() {
			            	index = 0;
			            	moveIndex();
			          }
			        
			        	@Override
			        	public boolean hasNext() {
			            	return index < list.size();
			          }
			        
			        	@Override
			        	public T next() {
			            	if (!hasNext()) {
			                	throw new NoSuchElementException();
			              }
			            	T answer = list.get(index);
			            	index++;
			            	moveIndex();
			            	return answer;
			          }
			        
			        	private void moveIndex() {
			            	while (hasNext() && !filter.test(list.get(index))) {
			                	index++;
			              }
			          }
			      }
			  }
			  ```
			- **Solution2: (non-efficient)**
			- ```java
			  private class FilteredListIterator implements Iterator<T> {
			    	LinkedList<T> items;
			    
			    	public FilteredListIterator() {
			        	items = new LinkedList<>();
			        	for (T item: list) {
			            	if (pred.test(item)) {
			                	items.add(item);
			              }
			          }
			      }
			    
			    	@Override
			    	public boolean hasNext() {
			        	return !items.isEmpty();
			      }
			    
			    	@Override
			    	public T next() {
			        	if (!hasNext()) {
			            	throw new NoSuchElementException();
			          }
			        	return items.removeFirst();
			      }
			  }
			  ```
			- **Difference:**
			- The first one is more efficient than the second one. Imagine you only want the first couple items from the iterable. Is it worth processing the entire list in the constructor? It is not ideal in the case that our list is millions of elements long. The first solution is different in that we "lazily" evaluate the list, only processing our index on every call to `next()` and `hasNext()`.
		- ### Iterator of Iterators #linked-list #iterator #iterable #lazy-calculation
		  collapsed:: true
			- Implement an `IteratorOfIterators` which will accept as an argument a `List` of
			  `Iterator` objects containing `Integers`. The first call to `next()` should return the
			  first item from the first iterator in the list. The second call to `next()` should return
			  the first item from the second iterator in the list. If the list contained n iterators,
			  the `n+1`th time that we call `next()`, we would return the second item of the first
			  iterator in the list.
			- Note that if an iterator is empty in this process, we continue to the next iterator.
			  Then, once all the iterators are empty, `hasNext()` should return `false`. For example,
			  if we had 3 `Iterators` `A`, `B`, and `C` such that `A` contained the values [1, 3,
			  4, 5], `B` was empty, and `C` contained the values [2], calls to `next()` for our
			  `IteratorOfIterators` would return [1, 2, 3, 4, 5].
			- **Solution 1: (more efficient)** This is lazy calculation
			- Using LinkedList like a queue to loop the `iterators`.
			- ```java
			  import java.util.*;
			  public class IteratorOfIterators implements Iterator<Integer> {
			    	LinkedList<Iterator<Integer>> iterators;
			    
			    	public IteratorOfIterators(List<Iterator<Integer>> a) {
			        	iterators = new LinkedList<>();
			        	for (Iterator<Integer> iterator: a) {
			            	if (iterator.hasNext()) {
			                	iterators.add(iterator);
			              }
			          }
			      }
			    
			    	@Override
			    	public boolean hasNext() {
			        	return !iterators.isEmpty();
			      }
			    
			    	@Override
			    	public Integer next() {
			        	if (!hasNext()) {
			            	throw new NoSuchElementException();
			          }
			        	Iterator<Integer> iterator = iterators.removeFirst();
			        	int ans = iterator.next;
			        	if (iterator.hasNext()) {
			            	iterators.addLast(iterator));
			          }
			        	return ans;
			      }
			  }
			  ```
			- **Solution 2:** Not efficient
			- ```java
			  public class IteratorOfIterators implements Iterator<Integer> {
			    	LinkedList<Integer> l;
			    
			    	public IteratorOfIterators(List<Iterator<Integer>> a) {
			        	l = new LinkedList<>();
			        	while (!a.isEmpty()) {
			            	Iterator<Integer> curr = a.remove(0);
			            	if (curr.hasNext()) {
			                	l.add(curr.next());
			                	a.add(curr);
			              }
			          }
			      }
			    
			    	@Override
			    	public boolean hasNext() {
			        	return !l.isEmpty();
			      }
			    
			    	@Override
			    	public Integer next() {
			        	if (!hasNext()) {
			            	throw new NoSuchElementException();
			          }
			        	return l.removeFirst();
			      }
			  }
			  ```
	- ## Disjoint Sets #union-find #algorithm #disjoint-set
	  collapsed:: true
		- ![image.png](../assets/image_1649260130348_0.png)
			- Good explanation for `logN` complexity.
		-
	- ## Asymptotic #algorithm
	  collapsed:: true
		- ### Log time decrease #complexity
			- ```java
			  public static void f4(int N) {
			  	if (N == 0) {return;}
			  	f4(N / 2);
			  	f4(N / 2);
			  	f4(N / 2);
			  	f4(N / 2);
			  	g(N); // runs in ??(N^2) time
			  }
			  ```
			- `O(N^2 log N)`, since f4(N / 2) will result O(N).
			- ```java
			  public static void f5(int N, int M) {
			  	if (N < 10) {return;}
			  	for (int i = 0; i <= N % 10; i++) {
			  	f5(N / 10, M / 10);
			  	System.out.println(M);
			  	}
			  }
			  ```
			- `O(N)` as long as we decrease i by dividing it, running time will be `O(N)`.
- # Lab
	- ## Lab 2: JUnit Tests and Debugging #java #test
	  collapsed:: true
		- If you have some terrible bug that is hard to fix, you can use `git` to revert back to a state when your code was working properly according to the JUnits tests. #debug #git
		- JUnit tests are short-circuiting ??? as soon as one of the asserts in a method fails, it will output the failure and move on to the next test. #junit
	- ## Lab 3: Timing Tests and Randomized Comparison Tests
	  collapsed:: true
		- For small inputs, results are unreliable for two reasons: The variance in runtime is high (due to issues like caching, process switching, branch prediction, etc.), and the accuracy of our timer (milliseconds) is insufficient to resolve the difference between N = 1000 and N = 2000. For this reason, when we run empirical timing tests, we want to focus on the behavior for large N. #timing #profiling
		- Set up an "Execution Breakpoint" to debug. #debug
			- If the test fails, the message that we get is something like:
			- ```
			  java.lang.ArrayIndexOutOfBoundsException: Index 7 out of bounds for length 7 
			  at randomizedtest.BuggyAList.resize(BuggyAList.java:31)
			  ```
			- click `Run -> View Breakpoints`, click on the checkbox on the left that says "any exception" and then click on that says "Condition:" and in the window and enter exactly:
			  `this instanceof java.lang.ArrayIndexOutOfBoundsException`
			  and then click "Enabled"
		- If you want to have your tests timeout after a certain amount of time (to prevent infinite loops), you can declare your test like this:
		  `@Test(timeout = 1000)`
		  The given parameter specifies the maximum time in milliseconds. #junit
	- ## Lab 4: Git and Debugging #git #debug
	  collapsed:: true
		- If we want to roll back to previous version, use `checkout`
			- `$ git checkout 9f955d85359fc8e4504d7220f13fad34f8f2c62b ./recipes/tofu`
			- **Important:** The checkout command does not change the commit history.
			- **Also Important:** Make sure to specify a file (or directory) when you use checkout. Otherwise, you're using a more powerful version of checkout that will probably confuse you.
		- If we want to actually roll back to this version, we'd have to commit:
			- `git commit -m "rolled back"`
			- We don't need to use `git add` since `git checkout` does an automatic `git add` for us.
		- `Stashing`
			- `Stash` ing allows you to save your changes onto a stack without making a more permanent commit. It is equivalent to picking up your work-in-progress and placing it in a box to get back to later. In the meantime, your desk is now clean.
			- Why might you want to use this?
				- You modified files but accidentally modified them on the wrong branch. Then you can `stash` your changes, switch branches, and unstash your changes so that they are all in the new branch.
				- You modified multiple files, but you dislike your changes and you would just like to get things back to how they were after your most recent commit. Then you can `stash` your code and then drop that stash rather than having to manually revert multiple files.
		- **`Rebasing`**
			- `Rebase` can be used as an alternative to `merge` for integrating changes from one branch to another. It is quite different from `merge` in that `merge` creates a new commit that has both parent branch commits as parents. Rebasing takes one set of commits from a branch and places them all at the end of the other branch.
			- `rebase` leads to a cleaner history when working with many different branches and team members.
		- **`Reset`**
			- Perhaps you decide that you want things to be how they were a certain number of commits ago. You can use `reset` if you are absolutely sure that you don't want the last few commits.
		- **`Revert`**
			- `Revert` allows you to reverse the changes introduced by certain commits by recording new commits to undo the changes. This is a safer option that simply throwing away past commits.
		- **`Cherry Pick`**
			- `Cherry pick` allows you to apply the changes introduced by some existing commits.
- # Project
	- ## Project 1 Gold
	  collapsed:: true
		- Autoboxing causing `NullPointerException` #autoboxing #java
		  collapsed:: true
			- This error happens because Java will freely convert from Integer (boxed type) to int (primitive type). This is called unboxing. However, only reference types can be null, so if you try to automatically convert a null Integer to an int, you???ll get a NullPointerException in your own code.
- # Guides
  collapsed:: true
	- [[cs61b lecture guides]]