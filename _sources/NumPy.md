# Numpy

## Purpose
This tutorial will introduce NumPy, a fundametal package for scientific computing in Python.

Reference: ```https://numpy.org/doc/stable/user/quickstart.html```

<hr>

## NumPy

NumPy’s main object is the homogeneous multidimensional array. It is a table of elements (usually numbers), all of the same type. In NumPy dimensions are called axes.

For example, the array for the coordinates of a point in 3D space, ```[1, 2, 1]```, has one axis. That axis has 3 elements in it, so we say it has a length of 3. In the example pictured below, the array has 2 axes. The first axis has a length of 2, the second axis has a length of 3.
```
[[1., 0., 0.],
 [0., 1., 2.]]
 ```
 

## Creating Array
You can create an array from a regular Python list or tuple using the array function. The type of the resulting array is deduced from the type of the elements in the sequences.

```python
import numpy as np
a = np.array([2, 3, 4])
print(type(a))
print(a.dtype)
b = np.array([1.2, 3.5, 5.1])
print(type(b))
print(b.dtype)
```

A frequent error consists in calling array with multiple arguments, rather than providing a single sequence as an argument
```Python
a = np.array(1, 2, 3, 4)    # WRONG
Traceback (most recent call last):
  ...
TypeError: array() takes from 1 to 2 positional arguments but 4 were given
a = np.array([1, 2, 3, 4])  # RIGHT
```


`np.array` transforms sequences of sequences into two-dimensional arrays, sequences of sequences of sequences into three-dimensional arrays, and so on.

```python
b = np.array([(1.5, 2, 3), (4, 5, 6)])
print(b)
print(b[0])
print(b[0][0]) 
print(b[0,0])
```

The function `np.zeros` creates an array full of zeros, the function ones creates an array full of ones, and the function empty creates an array whose initial content is random and depends on the state of the memory. By default, the dtype of the created array is float64, but it can be specified via the key word argument dtype.

```python
a = np.zeros((2, 6))
print(a)
b = np.ones((2, 3, 4), dtype=np.int16)
print(b)
c = np.empty((4, 5))
print(c)
```

To create sequences of numbers, NumPy provides the `arange` function which is analogous to the Python built-in range, but returns an array.

```python
a = np.arange(10, 30, 5)  
print(a)
b = np.arange(0, 2, 0.3)  
print(b)
```

When `arange` is used with floating point arguments, it is generally not possible to predict the number of elements obtained, due to the finite floating point precision. For this reason, it is usually better to use the function `linspace` that receives as an argument the number of elements that we want, instead of the step:

```python
a = np.linspace(0, 2, 9)                   # 9 numbers from 0 to 2
print(a)
b = np.linspace(0, 2 * np.pi, 100)        # useful to evaluate function at lots of points
print(b)
```

## Basic Operations
Arithmetic operators on arrays apply elementwise. A new array is created and filled with the result.

```python
a = np.array([20, 30, 40, 50])
print(a)
b = np.arange(4)
print(b)
c = a - b
print(c)
d = b**2
print(d)
e = 10 * np.sin(a)
print(e)
print(a < 35)
```

<span style="color:red">**IMPORTANT**</span>
Unlike in many matrix languages, the product operator `*` operates **elementwise** in NumPy arrays. The matrix product can be performed using the `@` operator (in python >=3.5) or the dot function or method:

```python
A = np.array([[1, 1],
              [0, 1]])
B = np.array([[2, 0],
              [3, 4]])
print(A*B)   # elementwise product
print(A@B)   # matrix product
print(np.matmul(A,B)) # matrix product
print(A.dot(B))  # matrix product
```

Some operations, such as `+=` and `*=`, act in place to modify an existing array rather than create a new one.

```python
rg = np.random.default_rng(1)  # create instance of default random number generator
a = np.ones((2, 3), dtype=int)
print(a)
b = rg.random((2, 3))
print(b)
a *= 3
print(a)
b += a
print(b)
a += b  # b is not automatically converted to integer type
```

<span style="color:red">**IMPORTANT**</span>
A Python `list` cannot directly handle a mathematical operations, while numpy `array` can.  This is one of the main differences between a `list` and `array`. While you can store an integer or float in a list, you can’t really do mathematical operations in it.

```python
import numpy as np
a = np.array([1,2,3])  # np array
print(a+a)
print(a*3)
print(a**2)

b = [1,2,3] # python list
print(b+b)
print(b*3)
print(b**2) # Error
```

## Indexing, Slicing and Iterating
One-dimensional arrays can be indexed, sliced and iterated over, much like lists and other Python sequences.

```python
a = np.arange(10)**3
print(a)
print(a[2])
print(a[1:3])
print(a[1:])
print(a[:4])
print(a[-4:-2])
print(a[1:5])
print(a[1:5:2])
print(a[1:5:1])
# equivalent to a[0:6:2] = 1000;
# from start to position 6, exclusive, set every 2nd element to 1000
a[:6:2] = 1000
print(a)
b = a[::-1]  # reversed a
print(b)
for i in b:
    print(i**(1/3))
```

Examples of two-dimensional arrays are

```python
arr2 = np.array([[1,2,3,4,5],[6,7,8,9,10]])
print(arr2)
print(arr2[1,:])
print(arr2[:,1])
print(arr2[1,1:4])

```

## NumPy manipulation routines
There are a number of functions for array manipulation. Let's take look at a few of them.
A complete list can be found in the reference below.

Reference: `https://numpy.org/doc/stable/reference/routines.array-manipulation.html`

```python
import numpy as np
x = np.array([[1,2,3],[4,5,6]])
print(x)
print(np.shape(x)) # returns the array shape which is the same as matrix dimension
print(x.shape)     # shape is a properity of numpy.array 

# we can change the array shape
y = np.reshape(x,[3,2])
print(y)
print(y.shape)     #  array shape 

# flatten an array
z = x.flatten()
print(z)
print(z.shape)

# transpose
y = x.T  # matrix transpose of x
print(y)
z = np.transpose(x)  # same as x.T
print(z)

y = np.insert(x, [1], [[3,4,5]], axis=0)  # axis = 0 means the row 
print(y)
z = np.insert(x, [1], [[3],[4]], axis=1)  # axis = 0 means the column 
print(z)

y = np.fliplr(x) # reverse the order elements along the row axis (or reverse left and right)
y = np.flipud(x) # reverse the order elements along the col axis (or reverse up and down)


a = np.arange(9).reshape(3, 3)
print(a)
b = np.diagonal(a) # get the diagonal elelments
print(b)
c = np.fliplr(a).diagonal()  # fliplr and then get the diagonal elements
print(c)
d = np.flipud(a).diagonal()  # flipup and then get the diagonal elements
print(d)
```


## numpy.linalg
Since matrix can be easily represented by a NumPy `array`, NumPy contains a `linalg` submodule that provides various linear algebra functions.  

Reference: `https://numpy.org/doc/stable/reference/routines.linalg.html#module-numpy.linalg`

```python
import numpy as np
from numpy import linalg
A = np.array([[1,2],[3,4]])
print(A)
print(linalg.det(A)) # determinant of A
B = linalg.inv(A) # inverse of A
print(B)
w, v = linalg.eig(A) # eigen values and normalized eigenvectors
print(w)
print(v) # each column of v is a normlized eigenvector associated with w in the same order. 
```

## Logic Functions

Reference: `https://numpy.org/doc/stable/reference/routines.logic.html`

```python
x = np.array([0,1,1]) # x is a numpy array
print(x == 0)        # check if each element is zero
print(np.all(x==0))  # check if all elements are zero
print(np.any(x==0))  # check if any elemnent is zero
print((x==0).all())  # check if all elements are zero
print((x==0).any())  # check if any elemnent is zero
y=[0,1,1]            # y is a list
print(np.all(y==0))  # np.all() takes a list argument
print((y==0).all())  # a list object does not have all() method.
```
