- ```java
  public T max(Comparator<T> c) {
  	if (isEmpty()) {
  	return null;
  	}
  
  	if (c == null) {
  		c = cmp;
  	}
  
  	T ret = this.get(0);
  	for (T item : this) {
  		if (c.compare(item, ret) > 0) {
  			ret = item;
  		}
  	}
  	return ret;
  }
  
  public T max() {
  	return max(cmp);
  }
  ```