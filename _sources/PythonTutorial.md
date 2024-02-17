# 🔬 Lab 1: 🐍 Python Tutorial 

```{note}
The only way to learn a new programming language is by writing programs in it. - Dennis Ritchie (inventor of C programming language)
```

## Running Python

### Running Python in VS Code

- To open the `ece487_wksp` folder with VS Code, right-click on it and choose `Open with Code` from the menu.
- To open the `Terminal` window, go to View and click on `Terminal`. 
- Type in `python` and press `Enter`

```{image} ./figures/Terminal.png
:width: 540
:align: center
```
<br>

- This will open the Python Shell. The Shell is where you can enter code and see the responses and output of code you have programmed into Python.  This is a kind of sandbox, where you're able to try out some simple code and processes. For example, in the Shell enter: `2+3`.  If you press enter, it will display the answer `5` on the next line. 
- Try the following code in the Shell. 

```Python
2+3
"hello"+" world"
a = 2
print(a)
```
- The Python Shell acts very much like a calculator since code is basically a series of mathematical interactions with the system.  
- Try the follownig code

```Python
2+2    # add two integers
2+2.0  # add an integer to a floating point number
2*3    # 2 times 3
2**2   # 2 squared
2**3   # 2 cubed
2**128 # Unlike C, integers in Python does not have a size limitation.    
2/3    # It returns 1 in C, but 0.6666666666666 in Pyton 
2/3.0  # Same as 2/3 in Python.
2//3   # modulo (remainder), same as 2%3 in C
4//3   # modulo (remainder), same as 4%3 in C
```

- Now type in `exit()` and press `Enter` to leave the Python Shell.  You can also use `Ctrl+z` to exti the Shell.

### Running Python in Command Prompt (or Terminal for Mac)

- Open Command Prompt or PowerShell (or Terminal for Mac) and run `python` in Windows or `python3` in Mac. 
- This will open the Python Shell. 


## Python Programming

### Variables
- Numeric types: int, float, long, complex
- string
- boolean: True / False
    
Python's simple types are summarized in the following table:

**<center>Python Scalar Types</center>**

| Type        | Example        | Description                                                  |
|-------------|----------------|--------------------------------------------------------------|
| ``str``     | ``x = 'abc'``  | String: characters or text                                   | 
| ``int``     | ``x = 1``      | integers (i.e., whole numbers)                               |
| ``float``   | ``x = 1.0``    | floating-point numbers (i.e., real numbers)                  |                  
| ``complex`` | ``x = 1 + 2j`` | Complex numbers (i.e., numbers with real and imaginary part) |
| ``bool``    | ``x = True``   | Boolean: True/False values                                   | 
| ``NoneType``| ``x = None``   | Special object indicating nulls                              | 

Use the `type()` function to find the type for a value or variable

```python
# String
c = 'hello'
print(type(c))

# Integer
a = 1
print(type(a))

# Float
b = 1.0
print(type(b))

# Boolean
d = True
print(type(d))

# None
e = None
print(type(e))

# Cast integer to string
print(type(str(a)))

```

### Math Operators
- +, -, *, and /
- Exponentiation **
- Modulo % (Remainder)

### Logic Operators

```python
x == y # x is equal to y
x != y # x is not equal to y
x > y # x is greater than y
x < y # x is less than y
x >= y # x is greater than or equal to y 
x <= y # x is less than or equal to y
```

Try the  following code in Python Console.

```python
2+2
2+2.0
2*3
2**3   # exponentiation 
2**128 
2/3
2/3.0
2//3   # integer division
4//3   
2%3    # modulo
4%3
bin(5|2) # convert a number to binary after bit operations
bin(5^1)
bin(5&1)
a = 6
b = 7
print(a==6)   # boolean expressions
print(a==7)
print(a==6 and b==7)
print(a==6 or b==6)
print(not a==6 and b==6)
print(not (a==6 and b==6))
```


### Working with Variables
In programming languages, variables are containers that store simple information. In Python, variables can store strings or numbers. A string is a block of text, such as "Stan Baek is the legendary pirate captain." A number can be an integer or a decimal number.  Try the the following code in Python Console.

```python
# a string variable
name = "Stan Baek"
```
You can check the type in use by issuing the type() command

```python
type(name)
```

It will return `<class 'str'>`

Add a new string variable 
```python
title = "the legendary pirate captain"
```

You can add (+) string variables to combine them into a new variable

```python
character = name + ": " + title
print(character)  # It will print "Stan Baek: the legendary pirate captain"

# integer variable
age = 726

# Check the type using type()
type(name)
```

Let's try to combine a string with an integer
```python
# For string concatenation use + sign
print(character + age) # it will throw an error
```

Now let's convert integer to string for printing

```python
print(character + " is " + str(age) + " years old.")
```

It will print 
```
Stan Baek: the legendary pirate captain is 726 years old.
```

You can ask for input from the user. 
```python
age = input("How old are you? ")
type(age)

# Since age is a string variable. We need to convert it to integer.
int(age)+10

# Numbers with a decimal point are floating point variables
x = 3.141
type(x)

print(x)  # It will print 3.141

print(int(x))  # It will print 3
```

A few things are going on here while creating variables. First, Python lets us define variables using the convention variable_name = value. As long as the variable name is unique (it is not the name of a function, module, or other variable), we can define our variables this way. For strings, single quotes or double quotes must be used around the text that needs to be in the variables; it doesn't matter whether you choose single or double quotes, just stay consistent.


### Functions and Modules
The next step is to tackle built-in functions.  

```python
name = "Stan Baek"
len(name)  # return the lenght of string
type(name) # return variable type
```

Python has tens of built-in functions. To view the list of the functions, navigate to 
https://docs.python.org/3.8/library/functions.html

In Python you can use `help` to display the description of a function.


```python
help(len)
```

In Python, we can create functions to perform a specific task. Python functions start with the keyword `def` followed by the function name, an open parenthesis, any inputs to pass to the function, a close parenthesis, and a colon. When we start writing what the function will do, we need to start on a new line and "tab-in" so that Python knows we are writing within the scope of the function. The function finishes when it gets to the last line of code or it reaches a `return` keyword. Let's write a function that adds two numbers


```python
def add(a, b):
    return a+b
    
print(add(3, 4))
```

Let's look at the `print` function more carefully. There are a few different methods to print a string with variables. 


```python
title = "The legendary pirate captain"
age = 726.25

# method 1: (formatted-string)%(values)
print("%s is %f years old."%(title, age))     # print a string and a floating point
print("%s is %.4f years old."%(title, age))   # 4 decimal places
print("%s is %10.4f years old."%(title, age)) # allocate 10 spaces
print("%s is %d years old."%(title, age))     # print it as integer
print("%s is %10d years old."%(title, age))   # allocate 10 spaces

# method 2: (formatted-string).format(values)
print("{} is {} years old.".format(title, age)) 
print("{} is {:0.4f} years old.".format(title, age))
print("{} is {:10.4f} years old.".format(title, age))

# method 3: f(formatted-string with values)
print(f"{title} is {age} years old.")
print(f"{title} is {age:.4f} years old.")
print(f"{title} is {age:10.4f} years old.")
```

```
The legendary pirate captain is 726.250000 years old.
The legendary pirate captain is 726.2500 years old.
The legendary pirate captain is   726.2500 years old.
The legendary pirate captain is 726 years old.
The legendary pirate captain is        726 years old.
The legendary pirate captain is 726.25 years old.
The legendary pirate captain is 726.2500 years old.
The legendary pirate captain is   726.2500 years old.
The legendary pirate captain is 726.25 years old.
The legendary pirate captain is 726.2500 years old.
The legendary pirate captain is   726.2500 years old.
```


### Python Modules
Additional functions can be added to python through modules. Modules are packages of additional functionality built by others. Typically, a module is comprised of compiled code that serves a specific function. To use advanced mathematical functions, enter `import math`

```python
import math
math.sqrt(16)
math.sin(math.pi/2)
math.cos(0)
```

With Python code, the convention is to import all required modules at the top of the python script. By importing all modules at the beginning of the script, we ensure that all modules have been loaded by the time we need them later in the script. Also, it ensures anyone reading our code can very quickly see all the modules (dependencies) needed to run the code. 

We can also import individual functions from a module

```python
from math import sqrt, sin, pi
print(sqrt(16))
print(sin(pi/2))
cos(0)   # error because cos was not imported
```

```python
import math as m
m.sqrt(16)
m.sin(m.pi/2)
m.cos(0)
```

### Conditions
The `if`, `else`, and `elif` statements control conditional code execution. The general format of a conditional state is as follows:

```Python
if expression:
    statements
elif expression:
    statements
elif expression:
    statements
else:
    statements
```

If no action is to be taken, you can moit both the `else` and `elif` clauses of a conditional. Use the `pass` statement if no statements exists for a particular clause:

```Python
if expression:
    pass       # Do nothing.
else:
    statements
```

Here is an example

```Python
word = input("Enter a four-letter word: ")
if len(word) == 4:
    print(word, "is a four-letter word. Well done.")
elif len(word) == 3:
    print(word, "is a three-letter word.")
else:
    print(word, "is not a four-letter word.")
```

Let's take a look at the following if-elif-else statement.

```Python
hand = input("What would you like to play? ")
if hand == "Rock":
    print("It is a valid play.")
elif hand == "Paper":
    print("It is a valid play.")
elif hand == "Sciccors":
    print("It is a valid play.")
else:    
    print("It is an invalid play.")
```

This code can be simplified by

```Python
hand = input("What would you like to play? ")
if hand == "Rock" or hand == "Paper" or hand == "Sciccors":
    print("It is a valid play")
else:    
    print("It is an invalid play")
```

It can be even further simplified by

```Python
hand = input("What would you like to play? ")
if hand in  ("Rock", "Paper", "Scissors"):  # This is Pythonian
    print("It is a valid play")
else:    
    print("It is an invalid play")    
```

The ternary operator is a way of writing conditionals in Python. 

```Python
y = 1

if y == 1:
    x = 1
else: 
    x = 0
print(x)
```

The code above can be simplified by

```Python
x = 1 if y == 1 else 0  # This is Pythonian
print(x)
```

### Loops
Let's start with a simple `while` statement.

```Python
x = 1
while x < 5:
    print(x)
    x = x + 1
    
while True:
    print(x)
    x -= 1
    if x == 0:
        break
```

Let's try `for` loops

**for** loop is probably the most popular loop construct in Python:
```Python
for target in sequence:
    do_statements
```


```Python
for i in [0, 1, 2, 3, 4]:
    print(i)
```

```
0
1
2
3
4
```


```Python
for x in range(0,5):  # 0 <= x < 5
    print(x)
```
```
0
1
2
3
4
```

```Python
for i in range(5):
    print(i)
```
```
0
1
2
3
4
```

```Python
for i in range(2,5):
    print(i)
```
```
2
3
4
```
```Python
names = ['Peter Parker', 'Clark Kent', 'Wade Wilson', 'Bruce Wayne', 'Dr. Baek']
for i in range(0,len(names)):
    print(names[i])
```


It will print
```
Peter Parker
Clark Kent
Wade Wilson
Bruce Wayne
Dr. Baek
```

You can accomplish the same with the following code, called **_Pythonic_**,

```Python
for name in names:
    print(name)
```

It will print
```
Peter Parker
Clark Kent
Wade Wilson
Bruce Wayne
Dr. Baek
```

```Python
# indexing using for loops
index = 0
for name in names:
    print(index, name)
    index += 1
```

It will print
```
0 Peter Parker
1 Clark Kent
2 Wade Wilson
3 Bruce Wayne
4 Dr. Baek
```

```Python
# Pythonic with enumerate
for index, name in enumerate(names):
    print(index, name)
```

It will print
```
0 Peter Parker
1 Clark Kent
2 Wade Wilson
3 Bruce Wayne
4 Dr. Baek
```


```Python
# the index can start with 1 
for index, name in enumerate(names, start=1):
    print(index, name)
```

It will print
```
1 Peter Parker
2 Clark Kent
3 Wade Wilson
4 Bruce Wayne
5 Dr. Baek
```

```Python
heroes = ['Spiderman', 'Superman', 'Deadpool', 'Batman', 'Pirate Captain']

for index, name in enumerate(names):
    hero = heroes[index]
    print(f'{name} is actually {hero}')
```

It will print
```
Peter Parker is actually Spiderman
Clark Kent is actually Superman
Wade Wilson is actually Deadpool
Bruce Wayne is actually Batman
Dr. Baek is actually Pirate Captain
```


```Python
# Pythonic with zip
for name, hero in zip(names, heroes):
    print(f'{name} is actually {hero}')
```

It will print
```
Peter Parker is actually Spiderman
Clark Kent is actually Superman
Wade Wilson is actually Deadpool
Bruce Wayne is actually Batman
Dr. Baek is actually Pirate Captain
```

```Python
universes = ['Marvel', 'DC', 'Marvel', 'DC', 'USAFA']
for name, hero, universe in zip(names, heroes, universes):
    print(f'{name} is actually {hero} from {universe}')
```

It will print
```
Peter Parker is actually Spiderman from Marvel
Clark Kent is actually Superman from DC
Wade Wilson is actually Deadpool from Marvel
Bruce Wayne is actually Batman from DC
Dr. Baek is actually Pirate Captain from USAFA
```

```Python
example_string = "Hello World"
for c in example_string:
    print(c)
```

It will print
```
H
e
l
l
o
 
W
o
r
l
d
```


```Python
animals = list()
# appending to lists in for loop
for value in ['Horse','Mouse','Aardvark']:
    animals.append(value)
    
print(animals)
```

It will print
```
['Horse', 'Mouse', 'Aardvark']
```



```Python
# manipulating lists using for loops
for value in ['a','n','i','m','a','l','s']:
    print(value.upper())
```

It will print
```
A
N
I
M
A
L
S
```


## Deliverables

### Deliverable 1
Write a Python script that computes square roots using the Newton's method of successive approximation, which says that whenever we have a guess $y$ for the value of the square root of a number $x$, we can perform a simple manipulation to get a better guess by averaging $y$ with $x/y$. For example we can compute the square root of 2 as shown below


| Guess    | Quotient          | Average                    |
|:--------:|:-----------------:|:--------------------------:|
| $1$      | $2/1=2$           | $(2+1)/2=1.5$              | 
| $1.5$    | $2/1.5=1.333$     | $(1.333+1.5)/2=1.4176$     |
| $1.4176$ | $2/1.4176=1.4188$ | $(1.4188+1.4176)/2=1.4142$ |                  
| $1.4142$ | $\cdots$          |                            |
| $\vdots$ |                   |                            | 

You need to iterate until $|y^2 - x| < \epsilon$, where $\epsilon = 10^{-9}$ is the tolerance. You are not allowed to use any functions in the `math` module except `math.fabs` for the absolute values.  

### Deliverable 2
Write the `num_vowels` function inside `vowels.py` that takes a string argument and returns the number of lowercase vowels in the string.
















