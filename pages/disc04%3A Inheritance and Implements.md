- #java
- ![disc04sol.pdf](../assets/disc04sol_1668738866435_0.pdf)
- Can't do `super.super`
	- `public void m4() { System.out.println("Cm4-> " + super.super.x); }`
- For **overridden** methods, the actual method invoked is based on **dynamic** type of invoking expression.
	- First, check static type.
	- Then, try to get result from dynamic type if there is an overridden method of static type.
	- Do not use the "better" method if it is **overloaded** instead of **overridden**.
	- Example 1: Exam Prep Discussion 4: 1. Athletes (a) line 19:
		- {{video https://youtu.be/vS7ZCJbwyZo?t=432}}
		- {{youtube-timestamp 432}}
	- Example 2: Exam Prep Discussion 4: 3 Challenge: A puzzle
- #recursion Dynamic Method Selection
	- Add a special `IntNode` which `item=0` for the last node.
	- Override `max()` method is the base case for the recursion.
	- ```java
	  public class DMSList {
	    	private IntNode sentinel;
	    	public DMSList() {
	        	sentinel = new IntNode(-1000, new LastIntNode());
	      }
	    
	    	public class IntNode {
	        	public int item;
	        	public IntNode next;
	        	public IntNode(int i, IntNode h) {
	            	item = i;
	            	next = h;
	          }
	        	public int max() {
	            	return Math.max(item, next.max());
	          }
	      }
	    	public class LastIntNode extends IntNode {
	        	public LastIntNode() {
	            	super(0, null);
	          }
	        	@Override
	        	public int max() {
	            	return 0;
	          }
	      }
	    	public int max() {
	        	return sentinel.next.max();
	      }
	    	public void insertFront(int x) {
	        	sentinel.next = new IntNode(x, sentinel.next);
	      }
	  }
	  ```