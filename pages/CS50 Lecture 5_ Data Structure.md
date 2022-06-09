- #cs50 #introduction
- ## Star Points
	- Since copying an array is so time consuming, introducing linked list data structure.
	-
- ## Lecture
	- `realloc()`
	- How to get around the compiler for `linked list`
	  ```c
	  // This won't compile since the compiler check from top,
	  // and it have not seen node before.
	  typedef struct
	  {
	  	int number;
	    	node *next;
	  }
	  node;
	  
	  // This version can pass the compile
	  typedef struct node
	  {
	    int number;
	    // inside struct we have to name it as struct node
	    struct node *next;
	  }
	  node; // node can be used outside struct  
	  ```
- ## Shorts
	- #### Data Structures
		- By this point we've now examined four different ways to store sets of data:
			- Arrays
			- Linked lists
			- Hash tables
			- Tries
		- There are even some variations on these(trees and heaps, quite similar to tries, stacks and queues quite similar to arrays or linked lists, etc) but this will generally cover most of what we're looking at in C.
		- Arrays
			- Insertion is bad - lots of shifting to fit an element in the middle
			- Deletion is bad -lots of shifting after removing an element
			- Lookup is great - random access, constant time
			- Relatively easy to sort
			- Relatively small size-wise
			- Stuck with a fixed size, no flexibility
		- Linked list
			- Insertion is easy - just tack onto the front
			- Deletion is easy - once you find the element
			- Lookup is bad - have to rely on linear search
			- Relatively difficult to sort - unless you're willing to compromise on super-fast insertion and instead sort as you construct
			- Relatively small size-wise(not as small as arrays, double linked list > single linked list > array)
		- Hash tables
			- Insertion is a two-step process - hash, then add
			- Deletion is easy - once you find the element
			- Lookup is on average better than with linked lists because you have the benefit of a real-world constant factor
			- Not an ideal data structure if sorting is the goal - just use an array
			- Can run the gamut of size
		- Tries
			- Insertion is complex - a lot of dynamic memory allocation, but gets easier as you go
			- Deletion is easy - just free a node
			- Lookup is fast - not quite as fast as an array, but almost
			- Already sorted -sorts as you build in almost all situations
			- Rapidly becomes huge, even with very little data present, not great if space is at a premium
	- Singly-Linked List
	- Hash tables
		- Hash tables are not great at ordering or sorting data.
		- Two-step process
			- First, a **hash function**, which returns a nonnegative integer value called a hash code.
			- Second, an **array** capable of storing data of the type we wish to place into the data structure.
		- *Linear probing*
			- In this method, if we have a collision, we try to place the data in the next consecutive element in the array(wrapping around to the beginning if necessary) until we find a vacancy.
			- If we don't find what we're looking for in the first location, at least hopefully the element is somewhere nearby.
		- Chainning
			- Using linked list to store elements to get around of collision problem.
	- Tires
		- Prerequsites:
			- The key is guaranteed to be unique, and the value could be as simple as a boolean that tells you whether the data exists in the stucture.
			- Tries combine structures and pointers together to store data in an interesting way.
			- The data to be searched for in the trie is now a roadmap.
				- If you can follow the map from beginning to end, the data exists in the trie.
				- If you can't, it doesn't.
			- Unlike with a hash table, there are no collisions, and no two pieces of data(unless they are identical) have the same path.
			- Let's map key-value pairs where the keys are four-digit years(YYYY) and the values are names of universities founded during those years.
			- In a tire, the paths from a central **root** node to a **leaf** node(where the school names would be), would  be labeled with digits of the year.
			- Each node on the path from root to leaf could have 10 pointers emanating from it, one for each digit.
			- ```c
			  typedef struct _trie
			  {
			    	char university[20];
			    	struct _trie* paths[10];
			  }
			  trie;
			  ```
- ## Lab & Problem Set (rewrite)
	- [Lab5](https://cs50.harvard.edu/x/2022/labs/5/): [Github](https://github.com/me50/QiyanYu/blob/cs50/labs/2022/x/inheritance/inheritance.c)
		- Using `GENERATIONS` variable to make recursion
		- `seeding:` when we need to use `random()` function, we need to `seeding` a random number generator first. #tag_c_programming_tips
		  ```c
		  #include <stdlib.h>
		  #include <time.h>
		  
		  // Seed random number generator
		  srand(time(0));
		  
		  // Generate integers: 0, 1, 2
		  int r = rand() % 3;
		  ```
	- [PS5](https://cs50.harvard.edu/x/2022/psets/5/speller/):
		- dictionary.h
		  ```c
		  // Declares a dictionary's functionality
		  #ifndef DICTIONARY_H
		  #define DICTIONARY_H
		  
		  #include <stdbool.h>
		  
		  // Maximum length for a word
		  // (e.g., pneumonoultramicroscopicsilicovolcanoconiosis)
		  #define LENGTH 45
		  
		  // Prototypes
		  bool check(const char *word);
		  unsigned int hash(const char *word);
		  bool load(const char *dictionary);
		  unsigned int size(void);
		  bool unload(void);
		  
		  #endif // DICTIONARY_H
		  ```
		- **`ifndef` in `h` file:**
		  These lines of code ensure that, even though many other files `#include` it, `clang` will only compile it once.
		- `#define`:
		  a "preprocessor directive" that defines a "constant". It's a constant in the sense that you can't (accidentally) change it in your own code. In fact, `clang` will replace any mentions of `LENGTH` in your own code with, literally, `45`. In other words, it's not a variable, just a find-and-replace trick.
		- `const` in argument:
		  `const` means when passed in as arguments, must remain constant; you won't be able to change them, accidentally or otherwise!
		-
		-
	-