- ## Lecture 1 Guide
  collapsed:: true
	- <p><strong>Client Programs and Main Methods.</strong> A Java program without a main method
	  cannot be run using the <code class="highlighter-rouge">java</code> command. However, methods from one class can
	  be invoked using the <code class="highlighter-rouge">main</code> method of another class. A java class that uses
	  another class is called a client of that class.</p>
	- <p><strong>Class Declaration.</strong> Java classes can contain methods and/or variables.
	  We say that such methods and variables are “members” of the calss. Members can
	  be <em>instance</em> members or <em>static</em> members. Static members are declared with the
	  <code class="highlighter-rouge">static</code> keyword. Instance members are any members without the <code class="highlighter-rouge">static</code> keyword.</p>
	- <p><strong>Class Instantiation.</strong> Instantiating a class is almost always done using the
	  new keyword, e.g. <code class="highlighter-rouge">Dog d = new Dog()</code>. An instance of a class in Java is also
	  called an <code class="highlighter-rouge">Object</code>.</p>
	- <p><strong>Dot Notation.</strong> We access members of a class using dot notation, e.g.
	  <code class="highlighter-rouge">d.bark()</code>. Class members can be accessed from within the same class or from
	  other classes.</p>
	- <p><strong>Constructors.</strong> Constructors tell Java what to do when a program tries to
	   create an instance of a class, e.g. what it should do when it executes
	   <code class="highlighter-rouge">Dog d = new Dog()</code>.</p>
	- <p><strong>Array Instantiation.</strong> Arrays are also instantiated using the <code class="highlighter-rouge">new</code> keyword.
	  If we have an array of Objects, e.g. <code class="highlighter-rouge">Dog[] dogarray</code>, then each element of the
	  array must also be instantiated separately.</p>
	- <p><strong>Static vs. Instance methods.</strong> The distinction between static and instance
	  methods is incredibly important. Instance methods are actions that can only be
	   taken by an instance of the class (i.e. a specific object), whereas static
	   methods are taken by the class itself. An instance method is invoked using a
	   reference to a specific instance, e.g. <code class="highlighter-rouge">d.bark()</code>, whereas static methods
	   should be invoked using the class name, e.g. <code class="highlighter-rouge">Math.sqrt()</code>. Know when to use
	   each.</p>
	- <p><strong>Static variables.</strong> Variables can also be static. Static variables should be
	  accessed using the class name, e.g. <code class="highlighter-rouge">Dog.binomen</code> as opposed to <code class="highlighter-rouge">d.binomen</code>.
	  Technically Java allows you to access using a specific instance, but we strongly
	   encourage you not to do this to avoid confusion.</p>
	- <p><strong>void methods.</strong> A method which does not return anything should be given a void
	   return type.</p>
	- <p><strong>The <code class="highlighter-rouge">this</code> keyword.</strong> Inside a method, we can use the <code class="highlighter-rouge">this</code> keyword to refer
	  to the current instance.</p>
	- <p><strong>public static void main(String[] args).</strong> We now know what each of these
	  things means:</p>
	- <ul>
	  <li>public: So far, all of our methods start with this keyword.</li>
	  <li>static: It is a static method, not associated with any particular instance.</li>
	  <li>void: It has no return type.</li>
	  <li>main: This is the name of the method.</li>
	  <li>String[] args: This is a parameter that is passed to the main method.</li>
	  </ul>
	- <p><strong>Command Line Arguments.</strong> Arguments can be provided by the operating system to
	   your program as “command line arguments,” and can be accessed using the <code class="highlighter-rouge">args</code>
	   parameter in <code class="highlighter-rouge">main</code>. For example if we call our program from the command line
	   like this <code class="highlighter-rouge">java ArgsDemo these are command line arguments</code>, then the <code class="highlighter-rouge">main</code>
	   method of <code class="highlighter-rouge">ArgsDemo</code> will have an array containing the Strings “these”,
	   “are”, “command”, “line”, and “arguments”.</p>
	- <p><strong>Using Libraries.</strong> There’s no need in the year 2017 to build everything
	  yourself from scratch. In our course, you are allowed to and highly encouraged
	  to use Java’s built-in libraries, as well as libraries that we provide, e.g.
	  the Princeton standard library. You should not use libraries other than those
	  provided or built into Java because it may render some of the assignments moot,
	  and also our autograder won’t have access to these libraries and your code won’t
	  work.</p>
	- <p><strong>Getting Help from the Internet.</strong> You’re welcome to seek help online. However,
	  you should always cite your sources, and you should not seek help on specific
	  homework problems or projects. For example, googling “how convert String Java”
	   or “how read file Java” are fine, but you should not be searching “project 2
	   61b java berkeley”.</p>
- ## Lecture 2 Guide
  collapsed:: true
	- <p><strong>Client Programs and Main Methods.</strong> A Java program without a main method
	  cannot be run using the <code class="highlighter-rouge">java</code> command. However, methods from one class can
	  be invoked using the <code class="highlighter-rouge">main</code> method of another class. A java class that uses
	  another class is called a client of that class.</p>
	- <p><strong>Class Declaration.</strong> Java classes can contain methods and/or variables.
	  We say that such methods and variables are “members” of the calss. Members can
	  be <em>instance</em> members or <em>static</em> members. Static members are declared with the
	  <code class="highlighter-rouge">static</code> keyword. Instance members are any members without the <code class="highlighter-rouge">static</code> keyword.</p>
	- <p><strong>Class Instantiation.</strong> Instantiating a class is almost always done using the
	  new keyword, e.g. <code class="highlighter-rouge">Dog d = new Dog()</code>. An instance of a class in Java is also
	  called an <code class="highlighter-rouge">Object</code>.</p>
	- <p><strong>Dot Notation.</strong> We access members of a class using dot notation, e.g.
	  <code class="highlighter-rouge">d.bark()</code>. Class members can be accessed from within the same class or from
	  other classes.</p>
	- <p><strong>Constructors.</strong> Constructors tell Java what to do when a program tries to
	   create an instance of a class, e.g. what it should do when it executes
	   <code class="highlighter-rouge">Dog d = new Dog()</code>.</p>
	- <p><strong>Array Instantiation.</strong> Arrays are also instantiated using the <code class="highlighter-rouge">new</code> keyword.
	  If we have an array of Objects, e.g. <code class="highlighter-rouge">Dog[] dogarray</code>, then each element of the
	  array must also be instantiated separately.</p>
	- <p><strong>Static vs. Instance methods.</strong> The distinction between static and instance
	  methods is incredibly important. Instance methods are actions that can only be
	   taken by an instance of the class (i.e. a specific object), whereas static
	   methods are taken by the class itself. An instance method is invoked using a
	   reference to a specific instance, e.g. <code class="highlighter-rouge">d.bark()</code>, whereas static methods
	   should be invoked using the class name, e.g. <code class="highlighter-rouge">Math.sqrt()</code>. Know when to use
	   each.</p>
	- <p><strong>Static variables.</strong> Variables can also be static. Static variables should be
	  accessed using the class name, e.g. <code class="highlighter-rouge">Dog.binomen</code> as opposed to <code class="highlighter-rouge">d.binomen</code>.
	  Technically Java allows you to access using a specific instance, but we strongly
	   encourage you not to do this to avoid confusion.</p>
	- <p><strong>void methods.</strong> A method which does not return anything should be given a void
	   return type.</p>
	- <p><strong>The <code class="highlighter-rouge">this</code> keyword.</strong> Inside a method, we can use the <code class="highlighter-rouge">this</code> keyword to refer
	  to the current instance.</p>
	- <p><strong>public static void main(String[] args).</strong> We now know what each of these
	  things means:</p>
	- <ul>
	  <li>public: So far, all of our methods start with this keyword.</li>
	  <li>static: It is a static method, not associated with any particular instance.</li>
	  <li>void: It has no return type.</li>
	  <li>main: This is the name of the method.</li>
	  <li>String[] args: This is a parameter that is passed to the main method.</li>
	  </ul>
	- <p><strong>Command Line Arguments.</strong> Arguments can be provided by the operating system to
	   your program as “command line arguments,” and can be accessed using the <code class="highlighter-rouge">args</code>
	   parameter in <code class="highlighter-rouge">main</code>. For example if we call our program from the command line
	   like this <code class="highlighter-rouge">java ArgsDemo these are command line arguments</code>, then the <code class="highlighter-rouge">main</code>
	   method of <code class="highlighter-rouge">ArgsDemo</code> will have an array containing the Strings “these”,
	   “are”, “command”, “line”, and “arguments”.</p>
	- <p><strong>Using Libraries.</strong> There’s no need in the year 2017 to build everything
	  yourself from scratch. In our course, you are allowed to and highly encouraged
	  to use Java’s built-in libraries, as well as libraries that we provide, e.g.
	  the Princeton standard library. You should not use libraries other than those
	  provided or built into Java because it may render some of the assignments moot,
	  and also our autograder won’t have access to these libraries and your code won’t
	  work.</p>
	- <p><strong>Getting Help from the Internet.</strong> You’re welcome to seek help online. However,
	  you should always cite your sources, and you should not seek help on specific
	  homework problems or projects. For example, googling “how convert String Java”
	   or “how read file Java” are fine, but you should not be searching “project 2
	   61b java berkeley”.</p>
- ## Lecture 4 Guide
  collapsed:: true
	- <p><strong>Bits</strong> The computer stores information as memory, and represents this
	  information using sequences of bits, which are either 0 or 1.</p>
	- <p><strong>Primitives</strong> Primitives are representations of information. There are 8
	  primitive types in Java: byte, short, int, long, float, double, boolean, and
	  char. Each primitive is represented by a certain number of bits. For example,
	  ints are 32 bit primitives, while bytes are 8 bit primitives.</p>
	- <p><strong>Declaring Primitives</strong> When we declare a variable to be a primitive (i.e.
	  <code class="language-plaintext highlighter-rouge">int x;</code>), we set aside enough memory space to hold the bits (in this case,
	  32). We can think of this as a box holding the bits. Java then maps the
	  variable name to this box. Say we have a line of code <code class="language-plaintext highlighter-rouge">int y = x;</code> where <code class="language-plaintext highlighter-rouge">x</code>
	  was defined before. Java will copy the bits inside the <code class="language-plaintext highlighter-rouge">x</code> box into the bits in
	  the <code class="language-plaintext highlighter-rouge">y</code> box.</p>
	- <p><strong>Creating Objects</strong> When we create an instance of a class using the <code class="language-plaintext highlighter-rouge">new</code>
	  keyword, Java creates boxes of bits for each field, where the size of each box
	  is defined by the type of each field. For example, if a Walrus object has an
	  <code class="language-plaintext highlighter-rouge">int</code> variable and a <code class="language-plaintext highlighter-rouge">double</code> variable, then Java will allocate two boxes
	  totaling 96 bits (32 + 64) to hold both variables. These will be set to a
	  default value like 0. The constructor then comes in and fills in these bits to
	  their appropriate values. The return value of the constructor will return the
	  location in memory where the boxes live, usually an address of 64 bits. This
	  address can then be stored in a variable with a “reference type.”</p>
	- <p><strong>Reference Types</strong> If a variable is not a primitive type, then it is a
	  reference type. When we declare object variables, we use reference type
	  variables to store the location in memory of where an object is located.
	  Remember this is what the constructor returns. A reference type is always a box
	  of size 64 bits. Note that the variable does not store the entire object
	  itself!</p>
	- **Golden Rule of Equals** For primitives, the line `int y = x` copies the bits inside the `x` box into the `y` box. For reference types, we do the exact same thing. In the line `Walrus newWalrus = oldWalrus;`, we copy the 64 bit address in the `oldWalrus` box into the `newWalrus` box. So we can think of this golden rule of equals (GroE) as: when we assign a value with equals, we are just copying the bits from one memory box to another!
	  id:: 62a14703-246b-4725-8e4a-aa9ac67e4d52
	- <p><strong>Parameter Passing</strong> Say we have a method <code class="language-plaintext highlighter-rouge">average(double a, double b)</code>. This
	  method takes two doubles as parameters. Parameter passing also follows the
	  GRoE, i.e. when we call this method and pass in two doubles, we copy the bits
	  from those variables into the parameter variables.</p>
	- <p><strong>Array Instantiation.</strong> Arrays are also Objects, and are also instantiated
	  using the <code class="language-plaintext highlighter-rouge">new</code> keyword. This means declaring an array variable (i.e. <code class="language-plaintext highlighter-rouge">int[]
	  x;</code>) will create a 64-bit reference type variable that will hold the location
	  of this array. Of course, right now, this box contains the value null, as we
	  have not created the array yet. The <code class="language-plaintext highlighter-rouge">new</code> keyword for arrays will create the
	  array and return the location of this array in memory. So by saying <code class="language-plaintext highlighter-rouge">int[] x =
	  new int[]{0, 1, 2, 3, 4};</code>, we set the location of this newly created array to
	  the variable x. Note that the size of the array was specified when the array
	  was created, and cannot be changed!</p>
	- <p><strong>IntLists.</strong> Using references, we recursively defined the <code class="language-plaintext highlighter-rouge">IntList</code> class.
	  <code class="language-plaintext highlighter-rouge">IntLists</code> are lists of integers that can change size (unlike arrays), and
	  store an arbitrarily large number of integers. Writing a <code class="language-plaintext highlighter-rouge">size</code> helper method
	  can be done with either recursion or iteration.</p>
- ## Lecture 5 Guide
  collapsed:: true
	- <p><strong>Naked Data Structures</strong> <code class="language-plaintext highlighter-rouge">IntLists</code> are hard to use. In order to use an
	  <code class="language-plaintext highlighter-rouge">IntList</code> correctly, the programmer must understand and utilize recursion even
	  for simple list related tasks.</p>
	- <p><strong>Adding Clothes</strong> First, we will turn the <code class="language-plaintext highlighter-rouge">IntList</code> class into an <code class="language-plaintext highlighter-rouge">IntNode</code>
	  class. Then, we will delete any methods in the <code class="language-plaintext highlighter-rouge">IntNode</code> class. Next, we will
	  create a new class called <code class="language-plaintext highlighter-rouge">SLList</code>, which contains the instance variable
	  <code class="language-plaintext highlighter-rouge">first</code>, and this variable should be of type <code class="language-plaintext highlighter-rouge">IntNode</code>. In essence, we have
	  “wrapped” our <code class="language-plaintext highlighter-rouge">IntNode</code> with an <code class="language-plaintext highlighter-rouge">SLList</code>.</p>
	- <p><strong>Using SLList</strong> As a user, to create a list, I call the constructor for
	  <code class="language-plaintext highlighter-rouge">SLList</code>, and pass in the number I wish to fill my list with. The <code class="language-plaintext highlighter-rouge">SLList</code>
	  constructor will then call the <code class="language-plaintext highlighter-rouge">IntList</code> constructor with that number, and set
	  <code class="language-plaintext highlighter-rouge">first</code> to point to the <code class="language-plaintext highlighter-rouge">IntList</code> it just created.</p>
	- <p><strong>Improvement</strong> Notice that when creating a list with one value, we wrote
	  <code class="language-plaintext highlighter-rouge">SLList list = new SLList(1)</code>. We did not have to worry about passing in a null
	  value like we did with our <code class="language-plaintext highlighter-rouge">IntList</code>. Essentially, the SLList class acts as a
	  middleman between the list user and the naked <code class="language-plaintext highlighter-rouge">IntList</code>.</p>
	- <p><strong>Public vs. Private</strong> We want users to modify our list via <code class="language-plaintext highlighter-rouge">SLList</code> methods
	  only, and not by directly modifying <code class="language-plaintext highlighter-rouge">first</code>. We can prevent other users from
	  doing so by setting our variable access to <code class="language-plaintext highlighter-rouge">private</code>. Writing <code class="language-plaintext highlighter-rouge">private IntNode
	  first;</code> prevents code in other classes from accessing and modifying <code class="language-plaintext highlighter-rouge">first</code>
	  (while the code inside the class can still do so).</p>
	- <p><strong>Nested Classes</strong> We can also move classes into classes to make nested
	  classes! You can also declare the nested classes to be private as well; this
	  way, other classes can never use this nested class.</p>
	- <p><strong>Static Nested Classes</strong> If the <code class="language-plaintext highlighter-rouge">IntNode</code> class never uses any variable or
	  method of the <code class="language-plaintext highlighter-rouge">SLList</code> class, we can turn this class static by adding the
	  “static” keyword.</p>
	- <p><strong>Recursive Helper Methods</strong> If we want to write a recursive method in
	  <code class="language-plaintext highlighter-rouge">SLList</code>, how would we go about doing that? After all, the <code class="language-plaintext highlighter-rouge">SLList</code> is not a
	  naturally recursive data structure like the <code class="language-plaintext highlighter-rouge">IntNode</code>. A common idea is to
	  write an outer method that users can call. This method calls a private helper
	  method that takes <code class="language-plaintext highlighter-rouge">IntNode</code> as a parameter. This helper method will then
	  perform the recursion, and return the answer back to the outer method.</p>
	- <p><strong>Caching</strong> Previously, we calculated the size of our <code class="language-plaintext highlighter-rouge">IntList</code> recursively by
	  returning 1 + the size of the rest of our list. This becomes really slow if our
	  list becomes really big, and we repeatedly call our size method. Now that we
	  have an <code class="language-plaintext highlighter-rouge">SLList</code>, lets simply cache the size of our list as an instance
	  variable! Note that we could not do this before with out <code class="language-plaintext highlighter-rouge">IntList</code>.</p>
	- <p><strong>Empty Lists</strong> With an<code class="language-plaintext highlighter-rouge">SLList</code>, we can now represent an empty list. We simply
	  set <code class="language-plaintext highlighter-rouge">first</code> to <code class="language-plaintext highlighter-rouge">null</code> and <code class="language-plaintext highlighter-rouge">size</code> to <code class="language-plaintext highlighter-rouge">0</code>. However, we have introduced some bugs;
	  namely, because <code class="language-plaintext highlighter-rouge">first</code> is now <code class="language-plaintext highlighter-rouge">null</code>, any method that tries to access a
	  property of <code class="language-plaintext highlighter-rouge">first</code> (like <code class="language-plaintext highlighter-rouge">first.item</code>) will return a <code class="language-plaintext highlighter-rouge">NullPointerException</code>.
	  Of course, we can fix this bug by writing code that handles this special case.
	  But there may be many special cases. Is there a better solution?</p>
	- <p><strong>Sentinel Nodes</strong> Lets make all <code class="language-plaintext highlighter-rouge">SLList</code> objects, even empty lists, the same.
	  To do this, lets give each SLList a sentinel node, a node that is always there.
	  Actual elements go after the sentinel node, and all of our methods should
	  respect the idea that sentinel is always the first element in our list.</p>
	- <p><strong>Invariants</strong> An invariant is a fact about a data structure that is guaranteed
	  to be true (assuming there are no bugs in your code). This gives us a
	  convenient checklist every time we add a feature to our data structure. Users
	  are also guaranteed certain properties that they trust will be maintained. For
	  example, an <code class="language-plaintext highlighter-rouge">SLList</code> with a sentinel node has at least the following
	  invariants:</p>
	  <ul>
	  <li>The sentinel reference always points to a sentinel node.</li>
	  <li>The front item (if it exists), is always at sentinel.next.item.</li>
	  <li>The size variable is always the total number of items that have been added.</li>
	  </ul>
- ## Lecture 6 Guide
  collapsed:: true
	- <p><strong>SLList Drawbacks</strong> <code class="language-plaintext highlighter-rouge">addLast()</code> is slow! We can’t add to the middle of our
	  list. In addition, if our list is really large, we have to start at the front,
	  and loop all the way to the back of our list before adding our element.</p>
	- <p><strong>A Naive Solution</strong> Recall that we cached the size of our list as an instance
	  variable of <code class="language-plaintext highlighter-rouge">SLList</code>. What if we cached the <code class="language-plaintext highlighter-rouge">last</code> element in our list as well?
	  All of a sudden, <code class="language-plaintext highlighter-rouge">addLast()</code> is fast again; we access the last element
	  immediately, then add our element in. But <code class="language-plaintext highlighter-rouge">removeLast()</code> is still slow. In
	  <code class="language-plaintext highlighter-rouge">removeLast()</code>, we have to know what our second-to-last element is, so we can
	  point our cached <code class="language-plaintext highlighter-rouge">last</code> variable to it. We could then cache a <code class="language-plaintext highlighter-rouge">second-to-last</code>
	  variable, but now if I ever want to remove the second-to-last element, I need
	  to know where our third-to-last element is. How to solve this problem?</p>
	- <p><strong>DLList</strong> The solution is to give each <code class="language-plaintext highlighter-rouge">IntNode</code> a <code class="language-plaintext highlighter-rouge">prev</code> pointer, pointing to
	  the previous item. This creates a doubly-linked list, or <code class="language-plaintext highlighter-rouge">DLList</code>. With this
	  modification, adding and removing from the front and back of our list becomes
	  fast (although adding/removing from the middle remains slow).</p>
	- <p><strong>Incorporating the Sentinel</strong> Recall that we added a sentinel node to our
	  <code class="language-plaintext highlighter-rouge">SLList</code>. For <code class="language-plaintext highlighter-rouge">DLList</code>, we can either have two sentinels (one for the front,
	  and one for the back), or we can use a circular sentinel. A <code class="language-plaintext highlighter-rouge">DLList</code> using a
	  circular sentinel has one sentinel. The sentinel points to the first element of
	  the list with <code class="language-plaintext highlighter-rouge">next</code> and the last element of the list with <code class="language-plaintext highlighter-rouge">prev</code>. In addition,
	  the last element of the list’s <code class="language-plaintext highlighter-rouge">next</code> points to the sentinel and the first
	  element of the list’s <code class="language-plaintext highlighter-rouge">prev</code> points to the sentinel. For an empty list, the
	  sentinel points to itself in both directions.</p>
	- <p><strong>Generic DLList</strong> How can we modify our <code class="language-plaintext highlighter-rouge">DLList</code> so that it can be a list of
	  whatever objects we choose? Recall that our class definition looks like
	  this:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public class DLList { ... }
	  </code></pre></div></div>
	- <p>We will change this to</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public class DLList&lt;T&gt; { ... }
	  </code></pre></div></div>
	- <p>where <code class="language-plaintext highlighter-rouge">T</code> is a placeholder object type. Notice the angle bracket syntax. Also
	  note that we don’t have to use <code class="language-plaintext highlighter-rouge">T</code>; any variable name is fine. In our <code class="language-plaintext highlighter-rouge">DLList</code>,
	  our item is now of type <code class="language-plaintext highlighter-rouge">T</code>, and our methods now take <code class="language-plaintext highlighter-rouge">T</code> instances as
	  parameters. We can also rename our <code class="language-plaintext highlighter-rouge">IntNode</code> class to <code class="language-plaintext highlighter-rouge">TNode</code> for accuracy.</p>
	- <p><strong>Using Generic DLList</strong> Recall that to create a <code class="language-plaintext highlighter-rouge">DLList</code>, we typed:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>DLList list = new DLList(10);
	  </code></pre></div></div>
	- <p>If we now want to create a <code class="language-plaintext highlighter-rouge">DLList</code> holding <code class="language-plaintext highlighter-rouge">String</code> objects, then we must
	  say:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>DLList&lt;String&gt; list = new DLList&lt;&gt;("bone");
	  </code></pre></div></div>
	- <p>On list creation, the compiler replaces all instances of <code class="language-plaintext highlighter-rouge">T</code> with <code class="language-plaintext highlighter-rouge">String</code>! We
	  will cover generic typing in more detail in later lectures.</p>
	  <p><strong>Arrays</strong> Recall that variables are just boxes of bits. For example, <code class="language-plaintext highlighter-rouge">int x;</code>
	  gives us a memory box of 32 bits. Arrays are a special object which consists of
	  a numbered sequence of memory boxes! To get the ith item of array <code class="language-plaintext highlighter-rouge">A</code>, use
	  <code class="language-plaintext highlighter-rouge">A[i]</code>. The length of an array cannot change, and all the elements of the array
	  must be of the same type (this is different from a Python list). The boxes are
	  zero-indexed, meaning that for a list with N elements, the first element is at
	  <code class="language-plaintext highlighter-rouge">A[0]</code> and the last element is at <code class="language-plaintext highlighter-rouge">A[N - 1]</code>. Unlike regular classes, <strong>arrays
	  do not have methods!</strong> Arrays do have a <code class="language-plaintext highlighter-rouge">length</code> variable though.</p>
	- <p><strong>Instantiating Arrays</strong> There are three valid notations for creating arrays.
	  The first way specifies the size of the array, and fills the array with default
	  values:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>int[] y = new int[3];
	  </code></pre></div></div>
	- <p>The second and third ways fill up the array with specific values.</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>int[] x = new int[]{1, 2, 3, 4, 5};
	  int[] w = {1, 2, 3, 4, 5};
	  </code></pre></div></div>
	- <p>We can set a value in an array by using array indexing. For example, we can say
	  <code class="language-plaintext highlighter-rouge">A[3] = 4;</code>. This will access the <strong>fourth</strong> element of array <code class="language-plaintext highlighter-rouge">A</code> and sets the
	  value at that box to 4.</p>
	- <p><strong>Arraycopy</strong> In order to make a copy of an array, we can use
	  <code class="language-plaintext highlighter-rouge">System.arraycopy</code>. It takes 5 parameters; the syntax is hard to memorize, so
	  we suggest using various references online such as
	  <a href="https://www.tutorialspoint.com/java/lang/system_arraycopy.htm">this</a>.</p>
	- <p><strong>2D Arrays</strong> We can declare multidimensional arrays. For 2D integer arrays, we
	  use the syntax:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>int[][] array = new int[4][];
	  </code></pre></div></div>
	- <p>This creates an array that holds integer arrays. Note that we have to manually
	  create the inner arrays like follows:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>array[0] = new int[]{0, 1, 2, 3};
	  </code></pre></div></div>
	- <p>Java can also create multidemensional arrays with the inner arrays created
	  automatically. To do this, use the syntax:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>int[][] array = new int[4][4];
	  </code></pre></div></div>
	- <p>We can also use the notation:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>int[][] array = new int[][]{{1}, {1, 2}, {1, 2, 3}}
	  </code></pre></div></div>
	- <p>to get arrays with specific values.</p>
	- <p><strong>Arrays vs. Classes</strong></p>
	  <ul>
	  <li>Both are used to organize a bunch of memory.</li>
	  <li>Both have a fixed number of “boxes”.</li>
	  <li>Arrays are accessed via square bracket notation. Classes are accessed via dot
	  notation.</li>
	  <li>Elements in the array must be all be the same type. Elements in a class may
	  be of different types.</li>
	  <li>Array indices are computed at runtime. We cannot compute class member
	  variable names.</li>
	  </ul>
- ## Lecture 7 Guide
  collapsed:: true
	- https://sp21.datastructur.es/materials/lectures/lec6/lec6
	- <p><strong>Lists vs. Arrays</strong> Our <code class="language-plaintext highlighter-rouge">DLList</code> has a drawback. Getting the i’th item is slow;
	  we have to scan through each item in the list, starting from the beginning or
	  the end, until we reach the i’th item. For an array named <code class="language-plaintext highlighter-rouge">A</code>, however, we can
	  quickly access the i’th item using bracket notation, <code class="language-plaintext highlighter-rouge">A[i]</code>. Thus, our goal is
	  to implement a list with an array.</p>
	- <p><strong>AList</strong> The <code class="language-plaintext highlighter-rouge">AList</code> will have the same API as our <code class="language-plaintext highlighter-rouge">DLList</code>, meaning it will
	  have the same methods as <code class="language-plaintext highlighter-rouge">DLList</code> (<code class="language-plaintext highlighter-rouge">addLast()</code>, <code class="language-plaintext highlighter-rouge">getLast()</code>, <code class="language-plaintext highlighter-rouge">removeLast()</code>,
	  and <code class="language-plaintext highlighter-rouge">get(int i)</code>). The <code class="language-plaintext highlighter-rouge">AList</code> will also have a <code class="language-plaintext highlighter-rouge">size</code> variable that tracks its
	  size.</p>
	  <p><strong>AList Invariants</strong> There are a few invariants for our <code class="language-plaintext highlighter-rouge">AList</code>.</p>
	  <ul>
	  <li><code class="language-plaintext highlighter-rouge">addLast</code>: The next item we want to add, will go into position <code class="language-plaintext highlighter-rouge">size</code>.</li>
	  <li><code class="language-plaintext highlighter-rouge">getLast</code>: The item we want to return is in position <code class="language-plaintext highlighter-rouge">size - 1</code>.</li>
	  <li><code class="language-plaintext highlighter-rouge">size</code>: The number of items in the list should be <code class="language-plaintext highlighter-rouge">size</code>.</li>
	  </ul>
	  <p><strong>Implementing AList</strong> Each <code class="language-plaintext highlighter-rouge">AList</code> has an <code class="language-plaintext highlighter-rouge">int[]</code> called <code class="language-plaintext highlighter-rouge">items</code>.</p>
	  <ul>
	  <li>For <code class="language-plaintext highlighter-rouge">addLast</code>, we place our item in <code class="language-plaintext highlighter-rouge">items[size]</code>.</li>
	  <li>For <code class="language-plaintext highlighter-rouge">getLast</code>, we simply return <code class="language-plaintext highlighter-rouge">items[size - 1]</code>.</li>
	  <li>For <code class="language-plaintext highlighter-rouge">removeLast</code>, we simply decrement <code class="language-plaintext highlighter-rouge">size</code> (we don’t need to change <code class="language-plaintext highlighter-rouge">items</code>).
	  Thus, if <code class="language-plaintext highlighter-rouge">addLast</code> is called next, it simply overwrites the old value, because
	  size was decremented. <strong>However, it is good practice to null out objects when
	  they are removed, as this will save memory.</strong>
	  Notice how closely these methods were related to the invariants.</li>
	  </ul>
	- <p><strong>Abstraction</strong> One key idea of this course is that the implementation details
	  can be hidden away from the users. For example, a user may want to use a list,
	  but we, as implementers, can give them any implementation of a list, as long
	  as it meets their specifications. A user should have no knowledge of the inner
	  workings of our list.</p>
	- <p><strong>Array Resizing</strong> When the array gets too full, we can resize the array. However,
	  we have learned that array size cannot change. The solution is, instead, to create
	  a new array of a larger size, then copy our old array values to the new array.
	  Now, we have all of our old values, but we have more space to add items.</p>
	- <p><strong>Resizing Speed</strong> In the lecture video, we started off resizing the array by one
	  more each time we hit our array size limit. This turns out to be extremely slow,
	  because copying the array over to the new array means we have to perform the copy
	  operation for each item. The worst part is, since we only resized by one extra box,
	  if we choose to add another item, we have to do this again each time we add to the
	  array.</p>
	- <p><strong>Improving Resize Performance</strong> Instead of adding by an extra box, we can instead
	  create a new array with <code class="language-plaintext highlighter-rouge">size * FACTOR</code> items, where <code class="language-plaintext highlighter-rouge">FACTOR</code> could be any number,
	  like 2 for example. We will discuss why this is fast later in the course.</p>
	- <p><strong>Downsizing Array Size</strong> What happens if we have a 1 million length array, but
	  we remove 990,000 elements of the array? Well, similarly, we can downsize our
	  array by creating an array of half the size, if we reach 250,000 elements, for
	  example. Again, we will discuss this more rigorously later in the course.</p>
	- <p><strong>Aside: Breaking Code Up</strong> Sometimes, we write large methods that do multiple
	  things. A better way is to break our large methods up into many smaller methods.
	  One advantage of this is that we can test our code in parts.</p>
	- <p><strong>Generic AList</strong> Last time, we discussed how to make a generic <code class="language-plaintext highlighter-rouge">DLList</code>. We can
	  do something similar for <code class="language-plaintext highlighter-rouge">AList</code>. But we find that we error out on array creation.
	  Our problem is that generic arrays are not allowed in Java. Instead, we will
	  change the line:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>items = new Item[100];
	  </code></pre></div></div>
	- <p>to:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>items = (Item[]) new Object[100];
	  </code></pre></div></div>
	- <p>This is called a cast, and we will learn about it in the future.</p>
- ## Lecture 8 Guide
  collapsed:: true
	- <p><strong>Method Overloading</strong> In Java, methods in a class can have the same name, but
	  different parameters. For example, a <code class="language-plaintext highlighter-rouge">Math</code> class can have an <code class="language-plaintext highlighter-rouge">add(int a, int b)</code>
	  method and an <code class="language-plaintext highlighter-rouge">add(float a, float b)</code> method as well. The Java compiler is smart
	  enough to choose the correct method depending on the parameters that you pass in.
	  Methods with the same name but different parameters are said to be overloaded.</p>
	- <p><strong>Making Code General</strong> Consider a <code class="language-plaintext highlighter-rouge">largestNumber</code> method that only takes an AList
	  as a parameter. The drawback is that the logic for <code class="language-plaintext highlighter-rouge">largestNumber</code> is the same
	  regardless of if we take an <code class="language-plaintext highlighter-rouge">AList</code> or <code class="language-plaintext highlighter-rouge">SLList</code>. We just operate on a different
	  type of list. If we use our previous idea of method overriding, we result in a very
	  long Java file with many similar methods. This code is hard to maintain; if we
	  fix a bug in one method, we have to duplicate this fix manually to all the other
	  methods.</p>
	- <p>The solution to the above problem is to define a new reference
	  type that represents both <code class="language-plaintext highlighter-rouge">AList</code> and <code class="language-plaintext highlighter-rouge">SLList</code>. We will call it a <code class="language-plaintext highlighter-rouge">List</code>. Next,
	  we specify an “is-a” relationship: An <code class="language-plaintext highlighter-rouge">AList</code> is a <code class="language-plaintext highlighter-rouge">List</code>. We do the same for
	  <code class="language-plaintext highlighter-rouge">SLList</code>. Let’s formalize this into code.</p>
	- <p><strong>Interfaces</strong> We will use the keyword <code class="language-plaintext highlighter-rouge">interface</code> instead of <code class="language-plaintext highlighter-rouge">class</code> to create
	  our <code class="language-plaintext highlighter-rouge">List</code>. More explicitly, we write:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public interface List&lt;Item&gt; { ... }
	  </code></pre></div></div>
	- <p>The key idea is that interfaces specify what this <code class="language-plaintext highlighter-rouge">List</code> can do, not how to do
	  it. Since all lists have a <code class="language-plaintext highlighter-rouge">get</code> method, we add the following method signature
	  to the interface class:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public Item get(int i);
	  </code></pre></div></div>
	- <p>Notice we did not define this method. We simply stated that this method should
	  exist as long as we are working with a <code class="language-plaintext highlighter-rouge">List</code> interface.</p>
	- <p>Now, we want to specify that an <code class="language-plaintext highlighter-rouge">AList</code> is a <code class="language-plaintext highlighter-rouge">List</code>. We will change our class
	  declaration of <code class="language-plaintext highlighter-rouge">AList</code> to:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public AList&lt;Item&gt; implements List&lt;Item&gt; { ... }
	  </code></pre></div></div>
	- <p>We can do the same for <code class="language-plaintext highlighter-rouge">SLList</code>. Now, going back to our <code class="language-plaintext highlighter-rouge">largestNumber</code> method,
	  instead of creating one method for each type of list, we can simply create one
	  method that takes in a <code class="language-plaintext highlighter-rouge">List</code>. As long as our actual object implements the <code class="language-plaintext highlighter-rouge">List</code>
	  interface, then this method will work properly!</p>
	- <p><strong>Overriding</strong> For each method in <code class="language-plaintext highlighter-rouge">AList</code> that we also defined in <code class="language-plaintext highlighter-rouge">List</code>, we
	  will add an @Override right above the method signature. As an example:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>@Override
	  public Item get(int i) { ... }
	  </code></pre></div></div>
	- <p>This is not technically necessary, but is good style and thus we will require it. Also, it
	  allows us to check against typos. If we mistype our method name, the compiler
	  will prevent our compilation if we have the @Override tag.</p>
	- <p><strong>Interface Inheritance</strong> Formally, we say that subclasses inherit from the
	  superclass. Interfaces contain all the method signatures, and each subclass
	  must implement every single signature; think of it as a contract. In addition,
	  relationships can span multiple generations. For example, C can inherit from B,
	  which can inherit from A.</p>
	- <p><strong>Default Methods</strong> Interfaces can have default methods. We define this via:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>default public void method() { ... }
	  </code></pre></div></div>
	- <p>We can actually implement these methods inside the interface. Note that there
	  are no instance variables to use, but we can freely use the methods that are
	  defined in the interface, without worrying about the implementation. Default
	  methods should work for any type of object that implements the interface! The
	  subclasses do not have to re-implement the default method anywhere; they can
	  simply call it for free. However, we can still override default methods, and
	  re-define the method in our subclass.</p>
	- <p><strong>Static vs. Dynamic Type</strong> Every variable in Java has a static type. This is
	  the type specified when the variable is declared, and is checked at compile
	  time. Every variable also has a dynamic type; this type is specified when
	  the variable is instantiated, and is checked at runtime. As an example:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Thing a;
	  a = new Fox();
	  </code></pre></div></div>
	- <p>Here, <code class="language-plaintext highlighter-rouge">Thing</code> is the static type, and <code class="language-plaintext highlighter-rouge">Fox</code> is the dynamic type. This is fine
	  because all foxes are things. We can also do:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Animal b = (Animal) a;
	  </code></pre></div></div>
	- <p>This is fine, because all foxes are animals too. We can do:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Fox c = (Fox) b;
	  </code></pre></div></div>
	- <p>This is fine, because <code class="language-plaintext highlighter-rouge">b</code> points to a <code class="language-plaintext highlighter-rouge">Fox</code>. Finally, we can do:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>a = new Squid()
	  </code></pre></div></div>
	- <p>This is fine, because the static type of <code class="language-plaintext highlighter-rouge">a</code> is a <code class="language-plaintext highlighter-rouge">Thing</code>, and <code class="language-plaintext highlighter-rouge">Squid</code> is a
	  thing.</p>
	- <p><strong>Dynamic Method Selection</strong> The rule is, if we have a static type <code class="language-plaintext highlighter-rouge">X</code>, and a
	  dynamic type <code class="language-plaintext highlighter-rouge">Y</code>, then if <code class="language-plaintext highlighter-rouge">Y</code> overrides the method from <code class="language-plaintext highlighter-rouge">X</code>, then on runtime,
	  we use the method in <code class="language-plaintext highlighter-rouge">Y</code> instead. Student often confuse overloading
	  and overriding.</p>
	- <p><strong>Overloading and Dynamic Method Selection</strong> Dynamic method selection plays
	  no role when it comes to overloaded methods. Consider the following piece of code, where
	  <code class="language-plaintext highlighter-rouge">Fox extends Animal</code>.</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>1  Fox f = new Fox();
	  2  Animal a = f;
	  3  define(f);
	  4  define(a);
	  </code></pre></div></div>
	- <p>Let’s assume we have the following overloaded methods in the same class:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public static void define(Fox f) { ... }
	  public static void define(Animal a) { ... }
	  </code></pre></div></div>
	- <p>Line 3 will execute <code class="language-plaintext highlighter-rouge">define(Fox f)</code>, while line 4 will execute <code class="language-plaintext highlighter-rouge">define(Animal a)</code>.
	  Dynamic method selection only applies when we have overridden methods. There
	  is no overriding here, and therefore dynamic method selection does not apply.</p>
- ## Lecture 9 Guide
  collapsed:: true
	- <p><strong>The Interface and implements.</strong> 
	  Up to now we have been writing classes and interfaces, and you have may noticed
	  places where we have had to write redundant code for different (but similar!)
	  classes. This leads us to the idea of inheritance, the idea that a class/object
	  does not need to redefine all its methods, and instead can use properties of a parent
	  class. Lets first note some differences between inheritence of a parent class and
	  interfaces (Note that a class can do both, even at the same time! Here is the syntax 
	  for implemeting an interface:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>SLList&lt;Blorp&gt; implements List61B&lt;Blorp&gt;
	  </code></pre></div></div>
	- <p>Similarly, the way for a class to extend the qualities of another class
	  the syntax is as follows:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Class_Name extends Class_Name
	  </code></pre></div></div>
	- <p><strong>Usage of Inheritance.</strong> Say we wanted to make a special type of <code class="language-plaintext highlighter-rouge">SLList</code>
	  called <code class="language-plaintext highlighter-rouge">RotatingSLList</code>. <code class="language-plaintext highlighter-rouge">RotatingSLList</code> should be able to do everyhthing that
	  SLList can; however, it should also be able to rotate to the right. How can we
	  do this? Well this is just an application of Inheritance! Doing the following
	  will allow for RotatingSLList to have all the qualities of SLList as well
	  as its own method <code class="language-plaintext highlighter-rouge">rotateRight</code>.</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public class RotatingSLList&lt;Blorp&gt; extends SLList&lt;Blorp&gt;{
	  public void rotateRight() {...}
	  }
	  </code></pre></div></div>
	- <p><strong>What is Inherited?</strong> We have a powerful tool in Inheritance now; however, we
	  will define a few rules. For now, we will say that we can inherit:</p>
	  <ul>
	  <li>instance and static variables</li>
	  <li>all methods</li>
	  <li>all nested classes
	  This changes a little bit with the introduction of private variables but
	  don’t worry about that right now. The one item that is not inherited is a
	  class’s constructor.</li>
	  </ul>
	- <p><strong>The Special Case of the Constructor?</strong> Even though constructor’s are not
	  inherited, we still use them. We can call the constructor explicitly by using
	  the keyword <code class="language-plaintext highlighter-rouge">super()</code>. At the start of every constructor, there
	  is already an implicit call to its super class`s constructor. As a result</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public VengefulSLList() {
	  deletedItems = new SLList&lt;Item&gt;();
	  }
	  </code></pre></div></div>
	- <p>is equivalent to</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public VengefulSLList() {
	  super();
	  deletedItems = new SLList&lt;Item&gt;();
	  }
	  </code></pre></div></div>
	- <p>However, constructor`s with arguments are not implicitly called. This means
	  that.</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public VengefulSLList() {
	    super(x);
	    deletedItems = new SLList&lt;Item&gt;();
	  }
	  </code></pre></div></div>
	- <p>is not equivalent to</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public VengefulSLList() {
	    deletedItems = new SLList&lt;Item&gt;();
	  }
	  </code></pre></div></div>
	- <p>This is because only the empty argument <code class="language-plaintext highlighter-rouge">super()</code> is called.</p>
	  <p><strong>Is A.</strong>  When a class inherits from another, we know that it must have all
	  the qualities of it. This means that <code class="language-plaintext highlighter-rouge">VengefulSLList</code> is a <code class="language-plaintext highlighter-rouge">SLList</code> because
	  it has all the qualities of an <code class="language-plaintext highlighter-rouge">SLList</code>- it just has a few additional ones too.</p>
	- <p>Every single class is a descendent on the Object class, meaning they are all
	  Objects.</p>
	- <p><strong>Abstraction</strong> As you’ll learn later in this class, programs can get a tad
	  confusing when they are really large. A way to make programs easier to handle
	  is to use abstraction. Basically abstraction is hiding components of programs
	  that people do not need to see. The user of the hidden methods should be able
	  to use them without knowing how they work.</p>
	- <p>An intuitive way to realize the motivation of abstraction is to look at yourself.
	  You are a human (unless some robot is looking at this in which case I am sorry
	  for offending you) and humans can eat food and convert it to energy. You do not
	  need to know how you convert food to energy you just know that it works. In this
	  case think of your conversion of food to energy as a method and the input is food
	  and the output is energy.</p>
	- <p><strong>Casting</strong> In Java, every object has a static type (defined at compile-time)
	  and a dynamic type (defined at run-time). Our code may rely on the fact that
	  some variable may be a more specific type than the static type. For example if
	  we had the below definitions:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Poodle frank  = new Poodle("Frank", 5);
	  Poodle frankJr = new Poodle("Frank Jr.", 15);
	  </code></pre></div></div>
	- <p>This statement would be valid</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Dog largerDog = maxDog(frank, frankJr);
	  </code></pre></div></div>
	- <p>But this one would not be</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Poodle largerPoodle = maxDog(frank, frankJr);
	  </code></pre></div></div>
	- <p>The reason the former statement is valid is because the compilers knows for a fact
	  that anything that is returned from a <code class="language-plaintext highlighter-rouge">maxDog</code> function call is a <code class="language-plaintext highlighter-rouge">Dog</code>. However,
	  in the latter case, the compiler does not know for a fact that the return
	  value of <code class="language-plaintext highlighter-rouge">maxDog</code> would result in a <code class="language-plaintext highlighter-rouge">Poodle</code> even though both <code class="language-plaintext highlighter-rouge">Dog</code> arguments
	  are <code class="language-plaintext highlighter-rouge">Poodle</code>s.</p>
	- <p>Instead of being happy with just having a generic <code class="language-plaintext highlighter-rouge">Dog</code>, we can be a bit risky
	  and use a technique called casting. Casting allows us to force the static
	  type of a variable, basically tricking the compiler into letting us force
	  the static type of am expression. To make <code class="language-plaintext highlighter-rouge">largerPoodle</code> into a static type
	  <code class="language-plaintext highlighter-rouge">Poodle</code> we will use the following:</p>
	- <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>Poodle largerPoodle = (Poodle) maxDog(frank, frankJr);
	  </code></pre></div></div>
	  <p>Note that we are not changing the actual dynamic type of maxDog- we are just
	  telling the compiler what is coming out of maxDog will be a <code class="language-plaintext highlighter-rouge">Poodle</code>. This means
	  that any reference to <code class="language-plaintext highlighter-rouge">largerPoodle</code> will have a static type of <code class="language-plaintext highlighter-rouge">Poodle</code>
	  associated with it.</p>
	- <p>Casting, while powerful is also quite dangerous. You need to ensure that what
	  you are casting to can and will actually happen. There are a few rules
	  that can be used:</p>
	  <ul>
	  <li>
	    <p>You can always cast up (to a more generic version of a class) without
	  fear of ruining anything because we know the more specific version is a version
	  of the generic class. For example you can always cast a Poodle to a Dog because
	  all Poodles are Dog’s.</p>
	  </li>
	  <li>
	    <p>You can also cast down (to a more specific version of a class) with caution as
	  you need to make sure that, during runtime, nothing
	  is passed in that violates your cast. For example, sometimes Dog’s are Poodle’s
	  but not always.</p>
	  </li>
	  <li>
	    <p>Finally, you cannot ever cast to a class that is neither above or below the
	  class being cast. For an example, you cannot cast a Dog to a Monkey because
	  a Monkey is not in the direct lineage of a Dog - it is a child of Animal so
	  a bit more distant. You can think of this as “side casting” and it will
	  result in a compile time error since the compiler knows this cast cannot
	  possibly work.</p>
	  </li>
	  </ul>
- ## Lecture 10 Guide
  collapsed:: true
	- <p><strong>Review: Typing Rules</strong></p>
	  <ul>
	  <li>Compiler allows the memory box to hold any subtype.</li>
	  <li>Compiler allows calls based on static type.</li>
	  <li>Overriden non-static methods are selected at runtime based on dynamic type.</li>
	  <li>For overloaded methods, the method is selected at compile time.</li>
	  </ul>
	- <p><strong>Subtype Polymorphism</strong> Consider a variable of static type <code class="language-plaintext highlighter-rouge">Deque</code>. The
	  behavior of calling <code class="language-plaintext highlighter-rouge">deque.method()</code> depends on the dynamic type. Thus, we
	  could have many subclasses the implement the <code class="language-plaintext highlighter-rouge">Deque</code> interface, all of which
	  will be able to call <code class="language-plaintext highlighter-rouge">deque.method()</code>.</p>
	- <p><strong>Subtype Polymorphism Example</strong> Suppose we want to write a function <code class="language-plaintext highlighter-rouge">max()</code>
	  that returns the max of any array regardless of type. If we write a method
	  <code class="language-plaintext highlighter-rouge">max(Object[] items)</code>, where we use the ‘&gt;’ operator to compare each element
	   in the array, this will not work! Why is this the case?</p>
	- <p>Well, this makes the assumption that all objects can be compared. But some
	  objects cannot! Alternatively, we could write a <code class="language-plaintext highlighter-rouge">max()</code> function inside the Dog
	  class, but now we have to write a <code class="language-plaintext highlighter-rouge">max()</code> function for each class that we want
	  to compare! Remember, our goal is to write a “one true max method” that
	  works for all comparable objects.</p>
	- <p><strong>Solution: OurComparable Interface</strong> The solution is to create an interface
	  that contains a <code class="language-plaintext highlighter-rouge">compareTo(Object)</code> method; let’s call this interface
	  <code class="language-plaintext highlighter-rouge">OurComparable</code>. Now, our <code class="language-plaintext highlighter-rouge">max()</code> method can take a <code class="language-plaintext highlighter-rouge">OurComparable[]</code> parameter,
	   and since we guarantee that any object which extends the interface has all the
	  methods inside the interface, we guarantee that we will always be able to call
	   a <code class="language-plaintext highlighter-rouge">compareTo</code> method, and that this method will correctly return some
	   ordering of the objects.</p>
	- <p>Now, we can specify a “one true max method”. Of course, any object that needs
	  to be compared must implement the <code class="language-plaintext highlighter-rouge">compareTo</code> method. However, instead of
	  re-implementing the <code class="language-plaintext highlighter-rouge">max</code> logic in every class, we only need to implement the
	   logic for picking the ordering of the objects, given two objects.</p>
	- <p><strong>Even Better: Java’s In-Built Comparable</strong> Java has an in-built <code class="language-plaintext highlighter-rouge">Comparable</code>
	   interface that uses generics to avoid any weird casting issues. Plus,
	   Comparable already works for things like <code class="language-plaintext highlighter-rouge">Integer</code>, <code class="language-plaintext highlighter-rouge">Character</code>, and <code class="language-plaintext highlighter-rouge">String</code>;
	  moreover, these objects have already implemented a <code class="language-plaintext highlighter-rouge">max</code>, <code class="language-plaintext highlighter-rouge">min</code>, etc. method
	   for you. Thus you do not need to re-do work that’s already been done!</p>
	- <p><strong>Comparators</strong> The term “Natural Order” is used to refer to the ordering
	  implied by a <code class="language-plaintext highlighter-rouge">Comparable</code>’s <code class="language-plaintext highlighter-rouge">compareTo</code> method. However, what if we want to
	  order our <code class="language-plaintext highlighter-rouge">Dog</code> objects by something other than <code class="language-plaintext highlighter-rouge">size</code>? We will instead pass in
	  a <code class="language-plaintext highlighter-rouge">Comparator&lt;T&gt;</code> interface, which demands a <code class="language-plaintext highlighter-rouge">compare()</code> method. We can then
	  implement the <code class="language-plaintext highlighter-rouge">compare()</code> method anyway we want to achieve our ordering.</p>
- ## Lecture 11 Guide
  collapsed:: true
	- <h2 id="exceptions">Exceptions</h2>
	  <p>Most likely you have encountered an exception in your code such as a <code class="language-plaintext highlighter-rouge">NullPointerException</code> or an <code class="language-plaintext highlighter-rouge">IndexOutOfBoundsException</code>.
	  Now we will learn about how we can “throw” exceptions ourselves, and also handle thrown exceptions.
	  Here is an example of an exception that we throw:</p>
	  <div class="language-java highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">throw</span> <span class="k">new</span> <span class="nc">RuntimeException</span><span class="o">(</span><span class="s">"For no reason."</span><span class="o">);</span>
	  </code></pre></div></div>
	- <p><em>Note: Try/Catch is out of scope for now!</em></p>
	- <p>Throwing exceptions is useful to notify your user of something wrong they have done. On the other hand, we can also “catch”
	  exceptions that happen in our code! Here is an example:</p>
	  <div class="language-java highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="k">try</span> <span class="o">{</span>
	    <span class="n">dog</span><span class="o">.</span><span class="na">run</span><span class="o">()</span>
	  <span class="o">}</span> <span class="k">catch</span> <span class="o">(</span><span class="nc">Exception</span> <span class="n">e</span><span class="o">)</span> <span class="o">{</span>
	    <span class="nc">System</span><span class="o">.</span><span class="na">out</span><span class="o">.</span><span class="na">println</span><span class="o">(</span><span class="s">"Tried to run: "</span> <span class="o">+</span> <span class="n">e</span><span class="o">);</span>
	  <span class="o">}</span>
	  <span class="nc">System</span><span class="o">.</span><span class="na">out</span><span class="o">.</span><span class="na">println</span><span class="o">(</span><span class="s">"Hello World!"</span><span class="o">);</span>
	  </code></pre></div></div>
	  <p>There are a few key things to note. Firstly, the entirety of the <code class="language-plaintext highlighter-rouge">try</code> section is run until/if there is an exception thrown. If there never
	  is an exception, the entire catch block is skipped. If there is an exception, the code immediately jumps into the catch block with the
	  corresponding exception, and executes from there.</p>
	- <h2 id="iterators-and-iterables">Iterators and Iterables</h2>
	  <p>These two words are very closely related, but have two different meanings that are often easy to confuse.
	  The first thing to know is that these are both Java interfaces, with different methods that need to be implemented.
	  Here is a simplified interface for Iterator:</p>
	- <div class="language-java highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kd">public</span> <span class="kd">interface</span> <span class="nc">Iterator</span><span class="o">&lt;</span><span class="no">T</span><span class="o">&gt;</span> <span class="o">{</span>
	  <span class="kt">boolean</span> <span class="nf">hasNext</span><span class="o">();</span>
	  <span class="no">T</span> <span class="nf">next</span><span class="o">();</span>
	  <span class="o">}</span>
	  </code></pre></div></div>
	- <p>Here is a simplified interface for Iterable:</p>
	- <div class="language-java highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kd">public</span> <span class="kd">interface</span> <span class="nc">Iterable</span><span class="o">&lt;</span><span class="no">T</span><span class="o">&gt;</span> <span class="o">{</span>
	    <span class="nc">Iterator</span><span class="o">&lt;</span><span class="no">T</span><span class="o">&gt;</span> <span class="nf">iterator</span><span class="o">();</span>
	  <span class="o">}</span>
	  </code></pre></div></div>
	- <p>Notice that in order for an object (for example an ArrayList or LinkedList) to be <em>iterable</em>, it must include a method that
	  returns an <em>iterator</em>. The iterator is the object that iterates over an iterable object. Keep this relationship and distinction
	  in mind as you work with these two interfaces.</p>
	- <h2 id="tostring">toString</h2>
	- <p>The <code class="language-plaintext highlighter-rouge">toString()</code> method returns a string representation of objects.</p>
	  <h2 id="-vs-equals">== vs .equals</h2>
	  <p>We have two concepts of equality in Java- “==” and the “.equals()” method. The key difference is that when using ==, we are checking if two objects have the same address in memory (that they point to the same object). On the other hand, .equals() is a method that can be overridden by a class and can be used to define some custom way of determining equality.</p>
	- <p>For example, say we wanted to check if two stones are equal:</p>
	  <div class="language-java highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="kd">public</span> <span class="kd">class</span> <span class="nc">Stone</span><span class="o">{</span>
	  <span class="kd">public</span> <span class="nf">Stone</span><span class="o">(</span><span class="kt">int</span> <span class="n">weight</span><span class="o">){...}</span>
	  <span class="o">}</span>
	  <span class="nc">Stone</span> <span class="n">s</span> <span class="o">=</span> <span class="k">new</span> <span class="nc">Stone</span><span class="o">(</span><span class="mi">100</span><span class="o">);</span>
	  <span class="nc">Stone</span> <span class="n">r</span> <span class="o">=</span> <span class="k">new</span> <span class="nc">Stone</span><span class="o">(</span><span class="mi">100</span><span class="o">);</span>
	  </code></pre></div></div>
	  <p>If we want to consider s and r equal because they have the same weight. If we do check equality using ==, these Stones would not be considered equal because they do not have the same memory address.</p>
	- <p>On the other hand, if you override the equals method of Stone as follows</p>
	  <div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public boolean equals(Object o){
	  return this.weight == ((Stone) o).weight
	  }
	  </code></pre></div></div>
	  <p>We would have that the stones would be considered equal because they have the same weight.</p>
- ## Lecture 13-sp18: Generics, Autoboxing Guide
  collapsed:: true
	- <p><strong>Autoboxing and Unboxing</strong> Autoboxing is the Java’s automatic conversion
	  of between wrappers (Integer) to primitives (int). In most cases, if Java expects
	  a wrapper class and gets a primitive instead, it autoboxes the primitive.
	  Alternatively, if Java expects a primitive and gets a wrapper, it unboxes
	  the wrapper.</p>
	- <p><strong>Drawbacks of Autoboxing and Unboxing</strong> Though you can almost always interchange
	  there are some things to the process.</p>
	  <ul>
	  <li>Autoboxing and unboxing can cause your program to slow down if you use it too much</li>
	  <li>Wrappers require a lot more memory than primitives.</li>
	  <li>If an array expects a wrapper and gets a primitive or vice versa, it will error.
	  As in you cannot pass ints into an array whose type is Integer[] or the
	  other way around.</li>
	  </ul>
	  <p><strong>Immutability</strong> Immutable data types are types that cannot change. To make
	  sure that a variable does not change, use the <code class="highlighter-rouge">final</code> keyword. Once
	  a variable is declared final, it can never change after initial assignment. An
	  important note is that if an address is declared final it means that the address
	  can’t change- it says nothing about its contents. For example the below syntax
	  is valid:</p>
	- <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>final int[] arr = new int[1];
	  arr[0] = 1;
	  arr[0] = 3
	  </code></pre></div></div>
	- <p>But this one is not:</p>
	- <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>final int[] arr = new int[3];
	  arr = new int[4];
	  </code></pre></div></div>
	- <p>Because you are changing the address of the actual array the variable is pointing
	  to.</p>
	- <p><strong>Generic Classes</strong> To make it so that a class can have variables or methods
	  that have a generic type, use the following syntax:</p>
	- <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public class ArrayMap&lt;K,V&gt;{...}
	  </code></pre></div></div>
	- <p>Then when instantiating the class pass in some “real”, or known, types to the
	  class</p>
	- <p><strong>Generic Methods</strong> You can define a method that takes in generic parameters
	  with the following syntax.</p>
	- <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public static &lt;Chow, Der&gt; Chow get(ArrayMap&lt;Chow, Der)&gt; am, Chow key){...}
	  </code></pre></div></div>
	- <p>From left to right we have the declaration of the generics being used in
	  this function then we have the return type. Finally, we have our arguments,
	  the first being an ArrayMap with 2 generics and the latter being a generic
	  type object.</p>
	- <p>To use a generic method use the following syntax</p>
	- <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>ArrayMap&lt;Integer, String&gt; ismap = new ArrayMap&lt;Integer, String&gt;();
	  System.out.println(MapHelper.get(ismap, 5));
	  </code></pre></div></div>
	  <p><strong>Comparing Objects with Generic Methods</strong> Now we have the ability to put vague
	  Objects into methods. However this lends itself to a bit of a problem- how
	  do we compare these Objects? We cannot simply use ‘&gt;’ because we aren’t sure
	  if our object is a numerical primitive. We can get around this by using
	  <code class="highlighter-rouge">.compareTo(Object O)</code>.</p>
	- <p>Now we have a new problem. How do we know if our generic has a compareTo method.
	  To get around this, we can make sure that our generic must be a type of
	  our <code class="highlighter-rouge">OurComparable</code>. How do we do this? Well take a gander below and check it out.</p>
	- <div class="highlighter-rouge"><div class="highlight"><pre class="highlight"><code>public static &lt;K extends OurComparable, V&gt; K maxKey(ArrayMap&lt;K, V&gt; am) {
	  ...
	  if (k.compareTo(largest) &gt; 0) {
	    ...
	  }
	  </code></pre></div></div>
	- <p>Basically what’s happening is that, in the header, we ensure that K needs to
	  extend <code class="highlighter-rouge">OurComparable</code>.</p>
- ## Lecture 13: Asymptotics
  collapsed:: true
	- <p><strong>Runtime Measurement.</strong> Some natural techniques:</p>
	- <ul>
	  <li>Measure the number of seconds that a program takes to complete using a
	  stopwatch (either physical or in software). This tells you the actual
	  runtime, but is dependent on the machine and inputs.</li>
	  <li>Count the number of operations needed for inputs of a given size. This is a
	  machine independent analysis, but still depends on the input, and also
	  doesn’t actually tell you how long the code takes to run.</li>
	  <li>Derive an algebraic expression relating the number of operations to the size
	  of an input. This tells you how the algorithm scales, but does not tell you
	  how long the code takes to run.</li>
	  </ul>
	- <p><strong>Algorithm Scaling.</strong> While we ultimately care about the runtime of an
	  algorithm in seconds, we’ll often say that one algorithm is better than another
	  simply because of how it scales. By scaling, we mean how the runtime of a piece
	  of code grows as a function of its input size. For example, inserting at the
	  beginning of ArrayList on an old computer might take $R(N) = 0.0001N$ seconds,
	  where $N$ is the size of the list.</p>
	- <p>For example, if the runtime of two algorithms is $R_1(N) = N^2$, and $R_2(N) =
	  5000 + N$, we’d say algorithm 2 is better, even though R1 is much faster for
	  small N.</p>
	- <p>A rough justification for this argument is that performance critical situations
	  are exactly those for which N is “large”, though this is not an obvious fact. In
	  almost all cases we’d prefer the linear algorithm. In some limited real-world
	  situations like matrix multiplication, one might select one algorithm for small
	  N, and another algorithm for large N. We won’t do this in 61B.</p>
	- <p><strong>Simplfying Algebraic Runtime.</strong> We utilize four simplifications to make
	  runtime analysis simpler.</p>
	- <ul>
	  <li>Pick an arbitrary option to be our <em>cost model</em>, e.g. # of array accesses.</li>
	  <li>Focus on the worst case, i.e. if the number of operations is between $1$ and $2N + 1$, consider only the $2N + 1$.</li>
	  <li>Ignore small inputs, e.g. treat $2N+1$ just like $2N$.</li>
	  <li>Ignore constant scaling factor, e.g. treat $2N$ just like $N$.</li>
	  </ul>
	- <p>As an example, if we have an algorithm that performs between $N$ and $2N + 1$ increment
	  operations and between $N$ and $4N^2 + 2N + 6$ compares, our intuitive simplifications will
	  lead us to say that this algorithm has a runtime proportional to $N^2$.</p>
	- <p>The cost model is simply an operation that we’re picking to represent the entire
	  piece of code. Make sure to pick an appropriate cost model!  If we had chosen
	  the number of increment operations as our cost model, we’d mistakenly determine
	  that the runtime was proportional to $N$. This is incorrect since for large N,
	  the comparisons will vastly outnumber the increments.</p>
	- <p><strong>Order of Growth.</strong> The result of applying our last 3 simplifications gives us the
	  order of growth of a function. So for example, suppose $R(N) = 4N^2 + 3N + 6$, we’d
	  say that the order of growth of $R(N)$ is $N^2$.</p>
	- <p>The terms “constant”, “linear”, and “quadratic” are often used for algorithms
	  with order of growth $1$, $N$, and $N^2$, respectively. For example, we might
	  say that an algorithm with runtime $4N^2 + 3N + 6$ is quadratic.</p>
	- <p><strong>Simplified Analysis.</strong> We can apply our simplifications in advance. Rather than
	  computing the number of operations for ALL operations, we can pick a specific operation
	  as our cost model and count only that operation.</p>
	- <p>Once we’ve chosen a cost model, we can either:</p>
	  <ul>
	  <li>Compute the exact expression that counts the number of operations.</li>
	  <li>Use intuition and inspection to find the order of growth of the number of operations.</li>
	  </ul>
	- <p>This latter approach is generally preferable, but requires a lot of practice. One common
	  intuitive/inspection-based approach is use geometric intuition. For example, if we have
	  nested for loops where i goes from 0 to N, and j goes from i + 1 to N, we observe that the
	  runtime is effectively given by a right triangle of side length N. Since the area of a such
	  a triangle grows quadratically, the order of growth of the runtime is quadratic.</p>
	- <p><strong>Big Theta.</strong> To formalize our intuitive simplifications, we introduce
	  Big-Theta notation. We say that a function $R(N) \in \Theta(f(N))$ if there
	  exists positive constants $k_1$ and $k_2$ such that $k_1 f_1(N) \leq
	  R(N) \leq k_2f_2(N)$.</p>
	- <p>Many authors write $R(N) = \Theta(f(N))$ instead of $R(N) \in \Theta(f(N))$.
	  You may use either notation as you please. I will use them interchangeably.</p>
	- <p>An alternate non-standard definition is that $R(N) \in \Theta(f(N))$ iff the
	  $\lim_{N\to\infty} \frac{R(N)}{f(N)} = k$, where $k$ is some positive
	  constant.  We will not use this calculus based definition in class. I haven’t
	  thought carefully about this alternate definition, so it might be slightly
	  incorrect due to some calculus subtleties.</p>
	- <p>When using $\Theta$ to capture a function’s asymptotic scaling, we avoid
	  unnecessary terms in our $\Theta$ expression. For example, while $4N^2 + 3N +
	  6 \in \Theta(4N^2 + 3N)$, we will usually make the simpler claim that is $4N^2 + 3N + 6 \in \Theta(N^2)$.</p>
	- <p>Big Theta is exactly equivalent to order of growth. That is, if a function $R(N)$
	  has order of growth $N^2$, then we also have that $R(N) \in \Theta(f(N))$.</p>
- ## Lecture 14: Disjoint Sets
  collapsed:: true
	- <p><strong>Algorthm Development.</strong> Developing a good algorithm is an iterative process.
	  We create a model of the problem, develop an algorithm, and revise the
	  performance of the algorithm until it meets our needs. This lecture serves as an
	  example of this process.</p>
	- <p><strong>The Dynamic Connectivity Problem.</strong> The ultimate goal of this lecture was to
	  develop a data type that support the following operations on a fixed number <em>N</em>
	  of objects:</p>
	- <ul>
	  <li><code class="language-plaintext highlighter-rouge">connect(int p, int q)</code> (called <code class="language-plaintext highlighter-rouge">union</code> in our optional textbook)</li>
	  <li><code class="language-plaintext highlighter-rouge">isConnected(int p, int q)</code> (called <code class="language-plaintext highlighter-rouge">connected</code> in our optional textbook)</li>
	  </ul>
	- <p>We do not care about finding the actual path between <code class="language-plaintext highlighter-rouge">p</code> and <code class="language-plaintext highlighter-rouge">q</code>.
	  We care only about their connectedness. A third operation we can support
	  is very closely related to <code class="language-plaintext highlighter-rouge">connected()</code>:</p>
	- <ul>
	  <li><code class="language-plaintext highlighter-rouge">find(int p)</code>: The <code class="language-plaintext highlighter-rouge">find()</code> method is defined so that <code class="language-plaintext highlighter-rouge">find(p) == find(q)</code>
	   iff <code class="language-plaintext highlighter-rouge">connected(p, q)</code>. We did not use this in class, but it’s in our textbook.</li>
	  </ul>
	- <p><strong>Key observation: Connectedness is an equivalence relation.</strong> Saying that two
	  objects are connected is the same as saying they are in an equivalence class.
	  This is just fancy math talk for saying “every object is in exactly one bucket,
	  and we want to know if two objects are in the same bucket”. When you connect two
	  objects, you’re basically just pouring everything from one bucket into another.</p>
	- <p><strong>Quick find.</strong> This is the most natural solution, where each object is given an
	  explicit number. Uses an array <code class="language-plaintext highlighter-rouge">id[]</code> of length $N$, where <code class="language-plaintext highlighter-rouge">id[i]</code> is the bucket
	  number of object <code class="language-plaintext highlighter-rouge">i</code> (which is returned by <code class="language-plaintext highlighter-rouge">find(i)</code>). To connect two objects
	  <code class="language-plaintext highlighter-rouge">p</code> and <code class="language-plaintext highlighter-rouge">q</code>, we set every object in <code class="language-plaintext highlighter-rouge">p</code>’s bucket to have <code class="language-plaintext highlighter-rouge">q</code>’s number.</p>
	- <ul>
	  <li><code class="language-plaintext highlighter-rouge">connect</code>: May require many changes to <code class="language-plaintext highlighter-rouge">id</code>. Takes $\Theta(N)$ time, as
	  algorithm must iterate over the entire array.</li>
	  <li><code class="language-plaintext highlighter-rouge">isConnected</code> (and <code class="language-plaintext highlighter-rouge">find</code>): take constant time.</li>
	  </ul>
	- <p>Performing $M$ operations takes $\Theta(MN)$ time in the worst case. If $M$ is
	  proportional to $N$, this results in a $\Theta(N^2)$ runtime.</p>
	- <!--<p><b>Quadratic algorithms don't scale.</b>
	  Given an *N* times larger problems on an *N* times faster computer,
	  the problem takes *N* times as long to run.-->
	- <p><strong>Quick union.</strong> An alternate approach is to change the meaning of our <code class="language-plaintext highlighter-rouge">id</code>
	  array. In this strategy, <code class="language-plaintext highlighter-rouge">id[i]</code> is the parent object of object <code class="language-plaintext highlighter-rouge">i</code>. An object
	  can be its own parent. The <code class="language-plaintext highlighter-rouge">find()</code> method climbs the ladder of parents until it
	  reaches the root (an object whose parent is itself). To connect <code class="language-plaintext highlighter-rouge">p</code> and <code class="language-plaintext highlighter-rouge">q</code>, we
	  set the root of <code class="language-plaintext highlighter-rouge">p</code> to point to the root of <code class="language-plaintext highlighter-rouge">q</code>.</p>
	- <ul>
	  <li><code class="language-plaintext highlighter-rouge">connect</code>: Requires only one change to <code class="language-plaintext highlighter-rouge">id[]</code>, but also requires root finding
	  (worst case $\Theta(N)$ time).</li>
	  <li><code class="language-plaintext highlighter-rouge">isConnected</code> (and <code class="language-plaintext highlighter-rouge">find</code>): Requires root finding (worst case $\Theta(N)$
	  time).</li>
	  </ul>
	- <p>Performing $M$ operations takes $\Theta(NM)$ time in the worst case. Again, this
	  results in quadratic behavior if $M$ is proprtional to $N$.</p>
	- <p><strong>Weighted quick union.</strong> Rather than <code class="language-plaintext highlighter-rouge">connect(p, q)</code> making the root of <code class="language-plaintext highlighter-rouge">p</code>
	  point to the root of <code class="language-plaintext highlighter-rouge">q</code>, we instead make the root of the smaller tree point to
	  the root of the larger one. The tree’s <em>size</em> is the <em>number</em> of nodes, not the
	  height of the tree. Results in tree heights of $\lg N$.</p>
	- <ul>
	  <li><code class="language-plaintext highlighter-rouge">connect</code>: Requires only one change to <code class="language-plaintext highlighter-rouge">id</code>, but also requires root finding
	  (worst case $\lg N$ time).</li>
	  <li><code class="language-plaintext highlighter-rouge">isConnected</code> (and <code class="language-plaintext highlighter-rouge">find</code>): Requires root finding (worst case $\lg N$ time).</li>
	  </ul>
	- <p>Warning: if the two trees have the same size, the book code has the opposite
	  convention as quick union and sets the root of the second tree to point to the
	  root of the first tree. This isn’t terribly important (you won’t be tested on
	  trivial details like these).</p>
	- <p><strong>Weighted quick union with path compression.</strong> When <code class="language-plaintext highlighter-rouge">find</code> is called, every
	  node along the way is made to point at the root. Results in nearly flat trees.
	  Making $M$ calls to union and find with $N$ objects results in no more than $O(M
	  \log^*N)$ array accesses, not counting the creation of the arrays. For any
	  reasonable values of $N$ in this universe that we inhabit, $log^*(N)$ is at
	  most 5. It is possible to derive an even tighter bound, mentioned briefly in
	  class (known as the <a href="https://en.wikipedia.org/wiki/Ackermann_function">Ackerman
	  function</a>).</p>
- ## Lecture 15: Asymptotics II
  collapsed:: true
	- <p><strong>Runtime Analysis.</strong> Understanding the runtime of code involves deep thought.
	  It amounts to asking: “How long does it take to do stuff?”, where stuff can be
	  any conceivable computational process whatsoever. It simply cannot be done
	  mechanically, at least for non-trivial problems. As an example, a pair of nested
	  for loops does NOT mean $\Theta(N^2)$ runtime as we saw in lecture.</p>
	- <p><strong>Cost Model.</strong> As an anchor for your thinking, recall the idea of a “cost
	  model” from last lecture. Pick an operation and count them. You want the one
	  whose count has the highest order of growth as a function of the input size.</p>
	- <p><strong>Important Sums.</strong> This is not a math class so we’ll be a bit sloppy, but the
	  two key sums that you should know are that:</p>
	  <ul>
	  <li>$1 + 2 + 3 + … + N \in \Theta(N^2)$</li>
	  <li>$1 + 2 + 4 + 8 + … + N \in \Theta(N)$</li>
	  </ul>
	- <p><strong>Practice.</strong> The only way to learn this is through plenty of practice. Make sure to work through the problems in lecture and below when you have some time.</p>
- ## Lecture 16: ADTs, Sets, Maps, BSTs
  collapsed:: true
	- <p><strong>Abstract Data Type.</strong> An abstract data type (ADT) is similar to an interface in that it is defined by its operations rather than its implementation. It is a layer of abstraction not tied to a particular language. Some examples of ADT’s you may have seen in class so far include Lists, Sets, and Maps. Notice that a List can be implemented in several different ways (i.e. LinkedList, ArrayList) and the idea of a List is not restricted to just Java.</p>
	- <p><strong>Trees.</strong> A tree consists of a set of nodes and a set of edges that connect these nodes. As there exists only one path between any two nodes, there are no cycles in a tree. If a tree is rooted, every node except the root has exactly one parent. The root has no parents, and a node with no children is considered a leaf.</p>
	- <p><strong>Binary Search Trees.</strong> A Binary Search Tree (BST) is a rooted binary tree that maintains several key conditions to help optimize search. For a node X, every key in the left subtree is less than X’s key and every key in the right subtree is greater than X’s key. This aids with operations such as search since when we look for the position of a key, we can move left or right within our tree starting from the root depending on how our key compares to the key of each node.</p>
	- <p><strong>Runtime.</strong> BST’s help optimize our search so we do not always have to look at every single element in our tree when searching for a particular key. But how much does this optimize things? For a BST that is “bushy” (short and fat), we can search in O(log N) time where N is the number of nodes. For a BST that is “spindly” (tall and skinny), our search will take O(N) time. This is because search time depends on the height of our tree, where a bushy tree has a height of log N and a spindly tree has a height of N.</p>
- ## Lecture 17: B-Trees (2-3, 2-3-4 Trees)
  collapsed:: true
	- <h2 id="bsts">BSTs</h2>
	- <p><strong>Depth</strong> We define the depth of a <em>node</em> as how far it is from the root. For consistency, we say the root has a depth of 0.</p>
	- <p><strong>Height</strong> We define the height of a tree as the depth of the deepest node.</p>
	- <p>Notice that depending on how we insert into our BST, our height could vary drastically. We say a tree is “spindly”
	  if it has height close to N and a tree is “bushy” if its height is closer to logN. For operations such as getting a node,
	  we want to have the height to be as small as possible, thus favoring “bushy” BSTs</p>
	- <h2 id="b-trees">B-Trees</h2>
	- <p>Two specific B-Trees in this course are 2-3 Trees (A B-Tree where each node has 2 or 3 children),
	  and 2-3-4/2-4 Trees (A B-Tree where each node has 2, 3, or 4 children). The key idea of a B-Tree
	  is to over stuff the nodes at the bottom to prevent increaseing the height of the tree. This allows
	  us to ensure a max height of logN.</p>
	- <p>Make sure you know how to insert into a B-Tree. Refer back to lecture slides for examples.</p>
	- <p>With our restriction on height, we get that the runtime for contains and add are both THETA(LogN)</p>
	- <h3 id="b-tree-invariants">B-Tree invariants</h3>
	  <p>Because of how we add to our tree, we get two nice invariants for B-Trees:</p>
	- <ol>
	  <li>All leaves must be the same distance from the source</li>
	  <li>A non-leaf node with k items mut has exactly k+1 children.</li>
	  </ol>
- ## Lecture 18: Red Black Trees
  collapsed:: true
	- **Tree rotaions** We rotateLeft or rotateRight on a node, creating a different but valid BST with the same elements. Notice when we rotateLeft(G) we move the node G to be the left child of the new root.
	- **Left Leaning Red Black Tree** This is simply an implementation of a 2-3 Tree with the same ideas. Be able to convert between a 2-3 Tree and a LLRB tree. We use red links to indicate two nodes that would be in the same 2-3 Node. In a left leaning RB tree, we arbitrarily enforce that edges are always to the left (for convenience).
	- There are two important propertires for LLRBs:
		- No node ever has 2 red links (It wouldn’t be a valid node in a 2-3 Tree if it did)
		- Every path from the root to a leaf has the same number of black links. This is because every leaf in a 2-3 tree has same numbers of links from root. Therefore, the tree is balanced.
	- **LLRB operations** Always insert with a red link at the correct location. Then use the following three operations to “fix” or LLRB tree. See slides for visual
		- If there is a right leaning red link, rotate that node left.
		- If there are two consecutive left leaning links, rotate right on the top node.
		- If there is a node with two red links to children, flip all links with that node.
- ## Lecture 19: Hashing
  collapsed:: true
	- <p><strong>Brute force approach.</strong> All data is just a sequence of bits. Can treat key as
	  a gigantic number and use it as an array index. Requires exponentially large
	  amounts of memory.</p>
	- <p><strong>Hashing.</strong> Instead of using the entire key, represent entire key by a smaller
	  value. In Java, we hash objects with a hashCode() method that returns an integer
	  (32 bit) representation of the object.</p>
	- <p><strong>hashCode() to index conversion.</strong> To use hashCode() results as an index, we
	  must convert the hashCode() to a valid index. Modulus does not work since
	  hashCode may be negative. Taking the absolute value then the modulus also
	  doesn’t work since Math.abs(Integer.MIN_VALUE) is negative. Typical approach:
	  use hashCode &amp; 0x7FFFFFFF instead before taking the modulus.</p>
	- <p><strong>Hash function.</strong> Converts a key to a value between 0 and M-1. In Java, this means calling hashCode(), setting the sign bit to 0, then taking the modulus.</p>
	- <p><strong>Designing good hash functions.</strong> Requires a blending of sophisticated
	  mathematics and clever engineering; beyond the scope of this course. Most
	  important guideline is to use all the bits in the key. If hashCode() is known
	  and easy to invert, adversary can design a sequence of inputs that result in
	  everything being placed in one bin. Or if hashCode() is just plain bad, same
	  thing can happen.</p>
	- <p><strong>Uniform hashing assumption.</strong> For our analyses below, we assumed that our hash
	  function distributes all input data evenly across bins. This is a strong
	  assumption and never exactly satisfied in practice.</p>
	- <p><strong>Collision resolution.</strong> Two philosophies for resolving collisions discussed in
	  class: Separate (a.k.a. external) chaining and ‘open addressing’.</p>
	- <p><strong>Separate-chaining hash table.</strong> Key-value pairs are stored in a linked list of
	  nodes of length M. Hash function tells us which of these linked lists to use.
	  Get and insert both require potentially scanning through entire list.</p>
	- <p><strong>Resizing separate chaining hash tables.</strong> Understand how resizing may lead to
	  objects moving from one linked list to another. Primary goal is so that M is
	  always proportional to N, i.e. maintaining a load factor bounded above by some
	  constant.</p>
	- <p><strong>Performance of separate-chaining hash tables.</strong> Cost of a given get, insert,
	  or delete is given by number of entries in the linked list that must be
	  examined.</p>
	- <ul>
	  <li>The expected amortized search and insert time (assuming items are distributed
	  evenly) is N / M, which is no larger than some constant (due to resizing).</li>
	  </ul>
	- <p><strong>Linear-probing hash tables.</strong> We didn’t go over this in detail in 61B, but
	  it’s where you use empty array entries to handle collisions, e.g. linear
	  probing. Not required for exam.</p>
- ## Lecture 20: Heaps and Priority Queues
  collapsed:: true
	- **Priority Queue.** A Max Priority Queue (or PQ for short) is an ADT that supports at least the insert and delete-max operations. A MinPQ supposert insert and delete-min.
	- **Heaps.** A max (min) heap is an array representation of a binary tree such that every node is larger (smaller) than all of its children. This definition naturally applies recursively, i.e. a heap of height 5 is composed of two heaps of height 4 plus a parent.
	- **Tree Representations.** Know that there are many ways to represent a tree, and that we use Approach 3b (see lecture slides) for representing heaps, since we know they are complete.
	- **Running times of various PQ implementations.** Know the running time of the three primary PQ operations for an unordered array, ordered array, and heap implementation.
- ## Lecture 21: Tree and Graph Traversals
  collapsed:: true
	- **Trees.** A tree consists of a set of nodes and a set of edges connecting the nodes, where there is only one path between any two nodes. A tree is thus a graph with no cycles and all vertices connected.
	- **Traversals.** When we iterate over a tree, we call this a “tree traversal”.
	- **Level Order Traversal.** A level-order traversal visits every item at level 0, then level 1, then level 2, and so forth.
	- **Depth First Traversals.** We have three depth first traversals: Pre-order, in-order and post-order. In a pre-order traversal, we visit a node, then traverse its children. In an in-order traversal, we traverse the left child, visit a node, then traverse the right child. In a post-order traversal, we traverse both children before visiting. These are very natural to implement recursively. Pre-order and post-order generalize naturally to trees with arbtirary numbers of children. In-order only makes sense for binary trees.
	- **Graphs.** A graph consists of a set of nodes and a set of edges connecting the nodes. However, unlike our tree definition, we can have more than one path between nodes. Note that all trees are graphs. In CS 61B, we can assume all graphs are simple graphs (AKA no loops or parallel edges).
	- **Depth First Traversals.** DFS for graphs is similar to DFS for trees, but since there are potential cycles within our graph, we add the constraint that each vertex should be visited at most once. This can be accomplished by marking nodes as visited and only visiting a node if it had not been marked as visited already.
- ## Lecture 22: Graphs Traversals and Implementation
  collapsed:: true
	- **Graph Traversals Overview.** Just as we had both depth-first (preorder, inorder, and postorder) traversals and a breath-first (level order) traversal for trees, we can generalize these concepts to graphs. Specifically, given a source vertex, we can “visit” vertices in:
		- DFS Preorder: order in which DFS is called on each vertex.
		- DFS Postorder: order in which we return from DFS calls.
		- BFS: order of distance from the source. The lecture originally called this “level order” before we banish that term since nobody uses it in the real world for general graphs.
	- We use the term “depth first”, because we will explore “deeply” first (a la https://xkcd.com/761/]), and use the term “breadth first” because we go wide before we go deep.
	- If we use BFS on a vertex of a graph that happens to be the root of a tree, we get exactly the same thing as level order traversal.
	- **Breadth First Search.** Unlike DFS, BFS lends itself more naturally to an iterative solution than a recursive one. When we perform BFS, we visit a source vertex s, then visit every vertex that is one link away from s, then visites very vertex that is two links away from s, and so forth.
	- To achieve this, we use a simple idea: Create a so-called “fringe” of vertices that we think of as the next vertices to be explored. In the case of BFS, this fringe is a Queue, since we want to visit vertices in the order that we observe them. The pseudocode is as follows:
		- ```pseudocode
		  bfs(s):
		    fringe.enqueue(s)
		    mark(s)
		    while fringe is not empty:
		        dequeue(s)
		        visit(s)
		        for each unmarked neighbor of s:
		            mark(s)
		            enqueue(s)
		  ```
	- In class, we discussed how we could use BFS to solve the shortest paths problem: Given a source vertex, find the shortest path from that source to every other vertex. When solving shortest paths, we add additional logic to our BFS traversal, where we also set the edgeTo for every vertex at the same time that it is marked and enqueued.
	- **Graph API.** In lecture, we used the Graph API from the Princeton algorithms book. Choice of API determines how clients need to think to write codes, since certain API’s can make certain tasks easier or harder. This can also affect runtime and memory.
	- **Graph Implementations.** Several graph API implementations we explored included an adjacency matrix, list of edges, and adjacency lists. With an adjacency matrix, we essentially have a 2D array with a boolean indicating whether two vertices are adjacent. A list of edges is simply that – a collection of all edges, such as HashSet. The most common approach, adjacency lists, maintains an array of lists indexed by vertex number which stores the vertex numbers of all vertices adjacent to the given vertex.
- ## Lecture 23: Shortest Paths
  collapsed:: true
	- <p><strong>Dijktra’s Algorithm and Single-Source Shortest Paths.</strong> Suppose we want to
	  record the shortest paths from some source to every single other vertex (so that
	  we can rapidly found a route from s to X, from s to Y, and so forth). We already
	  know how to do this if we’re only counting the number of edges, we just use BFS.</p>
	- <p>But if edges have weights (representing, for example road lengths), we have to
	  do something else. It turns out that even considering edge weights, we can
	  preprocess the shortest route from the source to every vertex very efficiently.
	  We store the answer as a “shortest paths tree”. Typically, a shortest paths tree
	  is stored as an array of edgeTo[] values (and optionally distTo[] values if we
	  want a constant time distTo() operation).</p>
	- <p>To find the SPT, we can use Dijkstra’s algorithm, which is quite simple once you
	  understand it. Essentially, we visit each vertex in order of its distance from
	  the source, where each visit consists of relaxing every edge. Informally,
	  relaxing an edge means using it if its better than the best known distance to
	  the target vertex, otherwise ignoring it. Or in pseudocode:</p>
	- <div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">Dijkstra</span><span class="p">(</span><span class="n">G</span><span class="p">,</span> <span class="n">s</span><span class="p">):</span>
	    <span class="k">while</span> <span class="ow">not</span> <span class="n">every</span> <span class="n">vertex</span> <span class="n">has</span> <span class="n">been</span> <span class="n">visited</span><span class="p">:</span>
	        <span class="n">visit</span><span class="p">(</span><span class="n">unmarked</span> <span class="n">vertex</span> <span class="n">v</span> <span class="k">for</span> <span class="n">which</span> <span class="n">distTo</span><span class="p">(</span><span class="n">v</span><span class="p">)</span> <span class="ow">is</span> <span class="n">minimized</span><span class="p">)</span>
	  </code></pre></div></div>
	- <p>Where visit is given by the following pseudocode:</p>
	- <div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">visit</span><span class="p">(</span><span class="n">v</span><span class="p">):</span>
	    <span class="n">mark</span><span class="p">(</span><span class="n">v</span><span class="p">)</span>
	    <span class="k">for</span> <span class="n">each</span> <span class="n">edge</span> <span class="n">e</span> <span class="n">of</span> <span class="n">s</span><span class="p">:</span>
	        <span class="n">relax</span><span class="p">(</span><span class="n">e</span><span class="p">)</span>
	  </code></pre></div></div>
	- <p>And finally, relax is given by:</p>
	- <div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">relax</span><span class="p">(</span><span class="n">e</span><span class="p">):</span>
	    <span class="n">v</span> <span class="o">=</span> <span class="n">e</span><span class="p">.</span><span class="n">source</span>
	    <span class="n">w</span> <span class="o">=</span> <span class="n">e</span><span class="p">.</span><span class="n">target</span>        
	    <span class="n">currentBestKnownWeight</span> <span class="o">=</span> <span class="n">distTo</span><span class="p">(</span><span class="n">w</span><span class="p">)</span>
	    <span class="n">possiblyBetterWeight</span> <span class="o">=</span> <span class="n">distTo</span><span class="p">(</span><span class="n">v</span><span class="p">)</span> <span class="o">+</span> <span class="n">e</span><span class="p">.</span><span class="n">weight</span>
	    <span class="k">if</span> <span class="n">possiblyBetterWeight</span> <span class="o">&lt;</span> <span class="n">currentBestKnownWeight</span>
	        <span class="n">Use</span> <span class="n">e</span> <span class="n">instead</span> <span class="n">of</span> <span class="n">whatever</span> <span class="n">we</span> <span class="n">were</span> <span class="n">using</span> <span class="n">before</span>
	  </code></pre></div></div>
	- <p>Runtime is $O(V \times \log V + V \times \log V + E \times \log V)$, and since
	  $E \gt V$ for any graph we’d run Dijkstra’s algorithm on, this can be written as
	  more simply O(E log V).  See slides for runtime description.</p>
	- <p><strong>A* Single-Target Shortest Paths.</strong> If we need only the path to a single
	  target, then Dijkstra’s is inefficient as it explores many many edges that we
	  don’t care about (e.g. when routing from Denver to NYC, we’d explore everything
	  within more than a thousand miles in all directions before reaching NYC).</p>
	- <p>To fix this, we make a very minor change to Dijkstra’s, where instead of
	  visiting vertices in order of distance from the source, we visit them in order
	  of distance from the source + h(v), where h(v) is some heuristic.</p>
	- <p>Or in pseudocode:</p>
	- <div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">A</span><span class="o">*</span><span class="p">(</span><span class="n">G</span><span class="p">,</span> <span class="n">s</span><span class="p">):</span>
	    <span class="k">while</span> <span class="ow">not</span> <span class="n">every</span> <span class="n">vertex</span> <span class="n">has</span> <span class="n">been</span> <span class="n">visited</span><span class="p">:</span>
	        <span class="n">visit</span><span class="p">(</span><span class="n">unmarked</span> <span class="n">vertex</span> <span class="n">v</span> <span class="k">for</span> <span class="n">which</span> <span class="n">distTo</span><span class="p">(</span><span class="n">v</span><span class="p">)</span> <span class="o">+</span> <span class="n">h</span><span class="p">(</span><span class="n">v</span><span class="p">)</span> <span class="ow">is</span> <span class="n">minimized</span><span class="p">)</span>
	  </code></pre></div></div>
	- <p>It turns out (but we did not prove), that as long as h(v) is less than the true
	  distance from s to v, then the result of A* will always be correct.</p>
	- <p>Note: In the version in class, we did not use an explicit ‘mark’. Instead, we
	  tossed everything in the PQ, and we effectively considered a vertex marked if it
	  had been removed from the PQ.</p>
- ## Lecture 24: Minimum Spanning Trees
  collapsed:: true
	- <p><strong>Minimum Spanning Trees.</strong> Given an undirected graph, a spanning tree T is a
	  subgraph of G, where T is connected, acyclic, includes all vertices. The minimum
	  spanning tree is the spanning tree whose edge weights have the smallest sum.
	  MSTs are similar to SPTs, but despite intuition suggesting it may be the case,
	  for many graphs, the MST is not the SPT for any particular vertex. See
	  <a href="this
	  graph for an example of one for which the MST is a SPT">https://docs.google.com/presentation/d/1eZ6sCoAY8d-PAfyyTRG_EQ-BBNqxmTyJ2vS10ZzsGYg/edit#slide=id.g772f8a8e2_0_191</a>.</p>
	- <p><strong>Cut Property.</strong> If you divide the vertices up into two sets S and T
	  (arbitrarily), then a crossing edge is any edge which has one vertex in S and
	  one in T. Neat fact (the cut property): The minimum crossing edge for ANY cut is
	  part of the MST.</p>
	- <p><strong>Prim’s Algorithm.</strong> One approach for finding the MST is as follows: Starting
	  from any arbitrary source, repeatedly add the shortest edge that connects some
	  vertex in the tree to some vertex outside the tree. If the MST is unique, then
	  the result is independent of the source (doesn’t matter where we start). One
	  student at office hours likened this to the game of
	  <a href="Sharks and Minnows">http://www.wikihow.com/Play-Sharks-and-Minnows</a>, where you
	  catch exactly one minnow during each iteration of the algorithm. Each time, the
	  sharks get whichever minnow is closest to a shark.</p>
	- <p>Yet another way of thinking about Prim’s algorithm is that it is basically just
	  Dijkstra’s algorithm, but where we consider vertices in order of the distance
	  from the entire tree, rather than from source. Or in pseudocode, we simply
	  change relax so that it reads:</p>
	- <div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">relax</span><span class="p">(</span><span class="n">e</span><span class="p">):</span>
	    <span class="n">v</span> <span class="o">=</span> <span class="n">e</span><span class="p">.</span><span class="n">source</span>
	    <span class="n">w</span> <span class="o">=</span> <span class="n">e</span><span class="p">.</span><span class="n">target</span>        
	    <span class="n">currentBestKnownWeight</span> <span class="o">=</span> <span class="n">distTo</span><span class="p">(</span><span class="n">w</span><span class="p">)</span>
	    <span class="n">possiblyBetterWeight</span> <span class="o">=</span> <span class="n">e</span><span class="p">.</span><span class="n">weight</span> <span class="o">//</span> <span class="n">Only</span> <span class="n">difference</span><span class="err">!</span>
	    <span class="k">if</span> <span class="n">possiblyBetterWeight</span> <span class="o">&gt;</span> <span class="n">currentBestKnownWeight</span>
	        <span class="n">Use</span> <span class="n">e</span> <span class="n">instead</span> <span class="n">of</span> <span class="n">whatever</span> <span class="n">we</span> <span class="n">were</span> <span class="n">using</span> <span class="n">before</span>
	  </code></pre></div></div>
	- <p>Notice the difference is very subtle! Like Dijkstra’s, the runtime is O(E log
	  V). We can prove that Prim’s works because of the cut property.</p>
	- <p><strong>Kruskal’s Algorithm.</strong> As an alternate algorithm and as a showcasing of
	  various data structures in the course, we also considered Kruskal’s algorithm
	  for finding an MST. It performs the exact same task as Prim’s, namely finding an
	  MST, albeit in a different manner. In pseudocode, Kruskal’s algorithm is simply:</p>
	- <div class="language-python highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="n">Initialize</span> <span class="n">the</span> <span class="n">MST</span> <span class="n">to</span> <span class="n">be</span> <span class="n">empty</span>
	  <span class="n">Consider</span> <span class="n">each</span> <span class="n">edge</span> <span class="n">e</span> <span class="ow">in</span> <span class="n">INCREASING</span> <span class="n">order</span> <span class="n">of</span> <span class="n">weight</span><span class="p">:</span>
	    <span class="n">If</span> <span class="n">adding</span> <span class="n">e</span> <span class="n">to</span> <span class="n">the</span> <span class="n">MST</span> <span class="n">does</span> <span class="ow">not</span> <span class="n">result</span> <span class="ow">in</span> <span class="n">a</span> <span class="n">cycle</span><span class="p">,</span> <span class="n">add</span> <span class="n">it</span> <span class="n">to</span> <span class="n">e</span>
	  </code></pre></div></div>
	- <p>That’s it! The runtime for Kruskal’s, assuming that we already have all of our
	  edges in a sorted list and use a weighted quick union with path compression to
	  detect cycles, is O(E log*V), or (E log E) if we have use a PQ instead. See
	  slides for more details. We can prove that Kruskal’s works because of the cut
	  property.</p>
	- <p>Completely unimportant technical note: We can actually make an even tighter
	  bound than $O(E \log*V)$ if we use the inverse Ackermann bound for WQUPC.</p>