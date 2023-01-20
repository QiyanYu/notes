- Java Stream is a powerful feature introduced in Java 8 that allows developers to process collections of data in a functional, declarative way.
- Streams provide a way to perform operations on elements of a collection (such as filtering, mapping, and reducing) without modifying the underlying data.
- Streams are lazy and can be parallelized, making them well-suited for large data sets. They can be created from various data sources, including arrays, lists, and sets.
- Moreover, where the loop prescribes the order of operations in complete detail, a stream is able to schedule the operations any way it wants, as long as the result is correct.
- The Java Stream API is part of the java.util.stream package.
- The Stream Library will process collections in a "what, not how" style.
- ### Stream vs. Collection
	- 1. A stream does not store its elements. They may be stored in an underlying collection or generated on demand.
	  2. Stream operations don't mutate their source.
	  3. Stream operations are *lazy* when possible.
- ### Collector
	- Collectors are used in conjunction with the `collect()` method of the Stream interface. The `collect()` method takes a `Collector` as an argument, which defines the reduction operation to be performed on the elements of the stream.
	- Here are some examples of the predefined reduction operations provided by the Collectors class:
		- `Collectors.toList()` - collects the elements of a stream into a List
		- `Collectors.toSet()` - collects the elements of a stream into a Set
		- `Collectors.toMap(Function keyMapper, Function valueMapper)` - collects the elements of a stream into a Map
		- `Collectors.counting()` - counts the number of elements in a stream
		- `Collectors.summingInt(ToIntFunction mapper)` - calculates the sum of the elements of a stream using an int-valued mapper function
		- `Collectors.averagingDouble(ToDoubleFunction mapper)` - calculates the average of the elements of a stream using a double-valued mapper function
		- `Collectors.groupingBy(Function classifier)` - groups the elements of a stream by a classifier function and returns a Map
	- #### Example
		- [[1817. Finding the Users Active Minutes]]