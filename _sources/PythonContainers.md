# Python Containers

## Purpose
This tutorial will introduce Python data containers, such as lists, tuples, and strings. 

Reference: D. Beazley, Python Essential Reference, 4th ed, Addison Wesley, 2009


<hr>

## Strings

To create string literals, enclose them in single, double, or triple quotes as follows

```python
a = "Hellow World"
b = 'Python is groovy'
c = """Computer says 'No'"""
print(a)
print(b)
print(c)
```

The same type of quote used to start a string must be used to terminate it.  Triple-quoted strings capture all the text that appears prior to the terminating triple quote, as opposed to single- and double-quoted strings, which must be  specified on one logical line.  Triple-quoted strings are useful when the contents of a string literal span multiple lines of text such as the following:

```python
print('''Content-type: text/html

<h1> Hello World </h1>
Click <a href="http://www.python.org">here</a>.
''')
```

Strings are stored as sequences of characters indexed by integers starting at zero

```python
a = "Hello World"
print(a[4])
print(a[:5])
print(a[6:])
print(a[3:8])
```

```python
x = "37"
y = "42"
z = x+y
print(z) # what does this print?  why?
z = int(x)+int(y)
print(z)  # what does this print?
```

## Lists
Lists are sequences of arbitrary objects. You create a list by enclosing values in square brackets, as follows:

```python
names = ["Dave", "Mark", "Ann", "Phil"]
print(names)
```

Lists are indexed by integers, starting with zero. Use the indexing operator to access and modify individual items of the list:

```python
a = names[2]
print(a)
names[0] = "Jeff"
names.append("Paula")
names.insert(2, "Thomas")
print(names)
```

Lists can be sliced:
```Python
x[start:stop:stride]
```

```python
b = names[0:2]
print(b)
c = names[2:]
print(c)
names[1] = 'Jeff'
print(names)
names[0:2] = ['Dave', 'Mark', 'Jeff']
print(names)
```

Use the plus `+` operator to concatenate lists: 

```python
a = [1,2,3]+[4,5,6]
print(a)
```

An empty list can be created bin one of two ways

```python
names = []
print(names)
names = list()
print(names)
```

Lists can contain any kind of Python object, including other lists, as in the following example:

```python
a = [1, "Dave", 3.14, ["Mark", 7, 9, [0, 101]], 10]
```

Items contained in nested lists are accessed by applying more than one indexing operation, as follows:

```python
print(a[1])
print(a[3])
print(a[3][1])
print(a[3][3][1])
```

Objects can be inserted and appended to a list.

```python
# List methods (insert)
list_b.insert(2,'python')
print(list_b)
```

```python
# List methods (append)
list_b.append('.')
print(list_b)
```

## Tuples
To create sinple data structures, you can pack a collection of values together into a single object using a *tuple*. You can create a tuple by enclosing group of values in parentheses like this: 

```python
stock = ("GOOG", 100, 490.10)
address = ('www.python.org', 80)
person = ("Stan", "Baek", "stanley.baek@afacademy")
```

Python often recognizes that a tuple is intended enve if the parentheses are missing

```python
stock = "GOOG", 100, 490.10
address = 'www.python.org', 80
person = "Stan", "Baek", "stanley.baek@afacademy"
```

For completeness, 0- and 1-element tuples can be defined, but have special syntax:

```python
a = ()    # 0-tuple, empty tuple
b = (1,)  # 1-tuple  
c = 1,    # 1-tuple
print(type(a))
print(type(b))
print(type(c))
b = (1)
c = 1
print(type(b))
print(type(c))
```

The values in a tuple can be extracted by numerical index just like a list. However, it is more common to unpack tuples into a set of variables like this

```python
name, shares, price = stock
host, port = address
first_name, last_name, phone = person
```

Although tuples support most of the same operations as lists, such as indexing, slicing, and concatenation, the contents of a utple cannot be modified after creation.  That is, you cannot replace, delete, or append new elements to an exisiting tuple. 

```python
print(stock[1]) 
stock[1] = 200  # error
```

## Dictionaries
- In Python, a dictionary (or dict) is mapping between a set of indices (keys) and a set of values
- The items in a dictionary are key-value pairs
- Keys can be any Python data type
- Dictionaries are unordered

```python
# Dictionaries
eng2sp = {}
eng2sp['one'] = 'uno'
print(eng2sp)
```

```python
eng2sp = {'one': 'uno', 'two': 'dos', 'three': 'tres'}
print(eng2sp)
```

```python
# keys vs values
print(eng2sp.keys())
print(eng2sp.values())
```

