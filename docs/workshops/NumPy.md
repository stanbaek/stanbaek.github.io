# ➕ NumPy

## Purpose
This tutorial introduces NumPy, a fundametal package for scientific computing in Python.

Reference: [NumPy Quickstart Guide](https://numpy.org/doc/stable/user/quickstart.html)

<hr>


- [NumPy user guide](https://numpy.org/doc/stable/user/index.html)
- [NumPy for MATLAB users](https://numpy.org/doc/stable/user/numpy-for-matlab-users.html)



## NumPy Overview

NumPy’s main object is the homogeneous multidimensional array. It is a table of elements (usually numbers) of the same type. In NumPy dimensions are called **axes**.

For example, the array representing coordinates in 3D space, `[1, 2, 1]`, has one axis with a length of 3.  The following 2D array has two axes: the first axis has a length of 2, the second axis has a length of 3.

```python
[[1., 0., 0.],
[0., 1., 2.]]
```

## Creating Arrays
You can create an array from a Python list or tuple using the `array` function. The resulting array's type is deduced from the elements in the sequence.

```python
import numpy as np
a = np.array([2, 3, 4])
print(type(a))    # Output: <class 'numpy.ndarray'>
print(a.dtype)    # Output: int64 or int32, depending on your system
b = np.array([1.2, 3.5, 5.1])
print(type(b))    # Output: <class 'numpy.ndarray'>
print(b.dtype)    # Output: float64 
```

A common mistake is passing multiple arguments to `array` instead of a single sequence:

```Python
a = np.array(1, 2, 3, 4)    # WRONG
# TypeError: array() takes from 1 to 2 positional arguments but 4 were given
a = np.array([1, 2, 3, 4])  # RIGHT
```

`np.array` can transform sequences of sequences into 2D arrays, sequences of sequences of sequences into 3D arrays, and so on.

```python
b = np.array([(1.5, 2, 3), (4, 5, 6)])
print(b)
print(b[0])
print(b[0][0]) 
print(b[0,0])
```

## Creating Arrays with Functions

NumPy provides several functions to create arrays:
- `np.zeros`: Creates an array filled with zeros.
- `np.ones`: Creates an array filled with ones.
- `np.empty`: Creates an uninitialized array with random content based on memory state.

```python
a = np.zeros((2, 6))  # 2x6 array of zeros
b = np.ones((2, 3, 4), dtype=np.int16)  # 3D array of ones
c = np.empty((4, 5))  # 4x5 uninitialized array
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

Arithmetic operations on NumPy arrays apply element-wise:
```python
a = np.array([20, 30, 40, 50])
b = np.arange(4)
c = a - b   # Element-wise subtraction
d = b**2    # Element-wise exponentiation
e = 10 * np.sin(a)   # Element-wise sine
```

```{note}
The `*` operator in NumPY performs element-wise multiplication, not matrix multiplication. Use the `@` operator, `.dot`, `np.dot()`, or `np.matmul()` for matrix multiplication:
```

```python
A = np.array([[1, 1], [0, 1]])
B = np.array([[2, 0], [3, 4]])
print(A * B)        # Element-wise multiplication
print(A @ B)        # Matrix multiplication
print(A.dot(B))         # Matrix multiplication
print(np.dot(A, B))     # Matrix multiplication
print(np.matmul(A,B))   # Matrix multiplication
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

```{important}
A key difference between a Python list and a NumPy array is how they handle mathematical operations. While both can store numbers like integers or floats, you cannot perform element-wise mathematical operations directly on a list. In contrast, NumPy arrays are designed for such operations.
```

For example, with a NumPy array, you can perform operations like addition, multiplication, and exponentiation directly, while with a Python list, these operations do not behave as expected:

```python
# NumPy array
a = np.array([1, 2, 3])
print(a + a)   # [2 4 6]
print(a * 3)   # [3 6 9]
print(a ** 2)  # [1 4 9]

# Python list
b = [1, 2, 3]
print(b + b)   # [1, 2, 3, 1, 2, 3] (concatenation, not addition)
print(b * 3)   # [1, 2, 3, 1, 2, 3, 1, 2, 3] (repetition, not multiplication)
print(b ** 2)  # Error: unsupported operand type(s) for ** or pow()
```
NumPy arrays are optimized for numerical and matrix computations, making them far more efficient for mathematical operations compared to Python lists.


## Indexing, Slicing and Iterating
NumPy arrays can be indexed and sliced similarly to Python lists:

```python
a = np.arange(10)**3
print(a[2])    # Access an element
print(a[1:4])  # Slice from index 1 to 4
print(a[::-1]) # Reverse the array
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

Two-dimensional arrays can be indexed like matrices:
```python
arr2 = np.array([[1,2,3,4,5],[6,7,8,9,10]])
print(arr2)
print(arr2[1,:])
print(arr2[:,1])
print(arr2[1,1:4])

```

## NumPy Manipulation Routines

NumPy provides many routines for reshaping, flattening, and manipulating arrays:

```python
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


## Linear Algebra with `numpy.linalg` 
NumPy's linalg submodule provides many linear algebra functions:

Reference: `https://numpy.org/doc/stable/reference/routines.linalg.html#module-numpy.linalg`

```python
from numpy import linalg
A = np.array([[1,2],[3,4]])
det_A = linalg.det(A) # determinant of A
inv_A = linalg.inv(A) # inverse of A
w, v = linalg.eig(A) # eigen values and normalized eigenvectors
print(w)
print(v) # each column of v is a normlized eigenvector associated with w in the same order. 
```

## Logical Functions
NumPy includes several logical functions that can be applied element-wise or to entire arrays:

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
