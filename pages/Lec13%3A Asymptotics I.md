- **Runtime Measurement.** Some natural techniques:
	- Measure the number of seconds that a program takes to complete using a stopwatch (either physical or in software). This tells you the actual runtime, but is dependent on the machine and inputs.
	- Count the number of operations needed for inputs of a given size. This is a machine independent analysis, but still depends on the input, and also doesn’t actually tell you how long the code takes to run.
	- Derive an algebraic expression relating the number of operations to the size of an input. This tells you how the algorithm scales, but does not tell you how long the code takes to run.
- **Algorithm Scaling.** While we ultimately care about the runtime of an algorithm in seconds, we’ll often say that one algorithm is better than another simply because of how it scales. By scaling, we mean how the runtime of a piece of code grows as a function of its input size. For example, inserting at the beginning of ArrayList on an old computer might take R(N)=0.0001NR(N)=0.0001N seconds, where NN is the size of the list.
  
  For example, if the runtime of two algorithms is R1(N)=N2R1(N)=N2, and R2(N)=5000+NR2(N)=5000+N, we’d say algorithm 2 is better, even though R1 is much faster for small N.
  
  A rough justification for this argument is that performance critical situations are exactly those for which N is “large”, though this is not an obvious fact. In almost all cases we’d prefer the linear algorithm. In some limited real-world situations like matrix multiplication, one might select one algorithm for small N, and another algorithm for large N. We won’t do this in 61B.
  
  **Simplfying Algebraic Runtime.** We utilize four simplifications to make runtime analysis simpler.
	- Pick an arbitrary option to be our *cost model*, e.g. # of array accesses.
	- Focus on the worst case, i.e. if the number of operations is between 11 and 2N+12N+1, consider only the 2N+12N+1.
	- Ignore small inputs, e.g. treat 2N+12N+1 just like 2N2N.
	- Ignore constant scaling factor, e.g. treat 2N2N just like NN.
- As an example, if we have an algorithm that performs between NN and 2N+12N+1 increment operations and between NN and 4N2+2N+64N2+2N+6 compares, our intuitive simplifications will lead us to say that this algorithm has a runtime proportional to N2N2.
  
  The cost model is simply an operation that we’re picking to represent the entire piece of code. Make sure to pick an appropriate cost model! If we had chosen the number of increment operations as our cost model, we’d mistakenly determine that the runtime was proportional to NN. This is incorrect since for large N, the comparisons will vastly outnumber the increments.
  
  **Order of Growth.** The result of applying our last 3 simplifications gives us the order of growth of a function. So for example, suppose R(N)=4N2+3N+6R(N)=4N2+3N+6, we’d say that the order of growth of R(N)R(N) is N2N2.
  
  The terms “constant”, “linear”, and “quadratic” are often used for algorithms with order of growth 11, NN, and N2N2, respectively. For example, we might say that an algorithm with runtime 4N2+3N+64N2+3N+6 is quadratic.
  
  **Simplified Analysis.** We can apply our simplifications in advance. Rather than computing the number of operations for ALL operations, we can pick a specific operation as our cost model and count only that operation.
  
  Once we’ve chosen a cost model, we can either:
- Compute the exact expression that counts the number of operations.
- Use intuition and inspection to find the order of growth of the number of operations.
  
  This latter approach is generally preferable, but requires a lot of practice. One common intuitive/inspection-based approach is use geometric intuition. For example, if we have nested for loops where i goes from 0 to N, and j goes from i + 1 to N, we observe that the runtime is effectively given by a right triangle of side length N. Since the area of a such a triangle grows quadratically, the order of growth of the runtime is quadratic.
  
  **Big Theta.** To formalize our intuitive simplifications, we introduce Big-Theta notation. We say that a function R(N)∈Θ(f(N))R(N)∈Θ(f(N)) if there exists positive constants k1k1 and k2k2 such that k1f1(N)≤R(N)≤k2f2(N)k1f1(N)≤R(N)≤k2f2(N).
  
  Many authors write R(N)=Θ(f(N))R(N)=Θ(f(N)) instead of R(N)∈Θ(f(N))R(N)∈Θ(f(N)). You may use either notation as you please. I will use them interchangeably.
  
  An alternate non-standard definition is that R(N)∈Θ(f(N))R(N)∈Θ(f(N)) iff the limN→∞R(N)f(N)=klimN→∞R(N)f(N)=k, where kk is some positive constant. We will not use this calculus based definition in class. I haven’t thought carefully about this alternate definition, so it might be slightly incorrect due to some calculus subtleties.
  
  When using ΘΘ to capture a function’s asymptotic scaling, we avoid unnecessary terms in our ΘΘ expression. For example, while 4N2+3N+6∈Θ(4N2+3N)4N2+3N+6∈Θ(4N2+3N), we will usually make the simpler claim that is 4N2+3N+6∈Θ(N2)4N2+3N+6∈Θ(N2).
  
  Big Theta is exactly equivalent to order of growth. That is, if a function R(N)R(N) has order of growth N2N2, then we also have that R(N)∈Θ(f(N))R(N)∈Θ(f(N)).