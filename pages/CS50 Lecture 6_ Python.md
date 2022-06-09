- #c #cs50
- ## Lecture
	- You need to have the ability to learn different programming language.
	-
- ## Shorts
	- #### Python #python
		- `dict` is not order guaranteed.
		- `Objects`
			- You define a type of object using the `class` keyword in Python.
			- Classes require an initialization function, also more-generally known as a *constructor*, which sets the starting values of the properties of the object.
			- In defining each method of an object, `self` should be its first parameter, which stipulates on what object the method is called.
		- ```python
		  # 1st type of printing 
		  print(f"hello, {answer}")
		  
		  # 2nd type of printing
		  print("hello, {} - {}".format(self.name, self.id))
		  ```
		- You can make your programs look a lot more like C programs when they execute by adding a **shebang** to the top of your Python files, which automatically finds and executes the interpreter for you.
		  `#!/usr/bin/env python3`
		  If you do this, you need to change the **permissions** on your file as well using the Linux command chmod as follows:
		  `chmod a+x <file>`
		  In this way, we can execute this `./prog.py`
		-
- ## Lab & Problem Sets (rewrite)
	- #### Credit: [Github](https://github.com/me50/QiyanYu/blob/da64f1e3537445da321e86e5be1dfde80e99ff00/credit.py) (Need to rewrite)
		- Using table to make a constrain of output
		  ```python
		  table = {
		          "v": "VISA",
		          "m": "MASTERCARD",
		          "a": "AMEX",
		          "i": "INVALID"
		      }
		  ```
		  Can use `enum` in C instead.
-