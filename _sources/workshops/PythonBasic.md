# 🐍 Python Basic 

This guide introduces Python programming fundamentals in a structured, interactive way. You’ll learn how to run Python programs, use variables, perform basic calculations, write functions, and control program flow using conditional statements and loops. The goal is to give you hands-on experience with Python and teach you the concepts that serve as the foundation of modern programming.  

```{note}
The only way to learn a new programming language is by writing programs in it. - Dennis Ritchie (inventor of C programming language)
```

## Running Python

### Running Python in VS Code

1. To open the `ece487_wksp` folder in VS Code, right-click on it and choose `Open with Code` from the menu.
1. To open the `Terminal` window, go to View and click on `Terminal`. 
1. Type in `python` and press `Enter`
1. This will launch the Python Shell, where you can input code and see the output. The Shell acts as a sandbox, allowing you to try out code snippets and get immediate feedback. For example, in the Shell, type `2+3` and press Enter, and it will display `5` on the next line.


1. **Open a folder**: Right-click on the `master_ws` folder and choose `Open with Code` from the context menu.  
1. **Open the terminal**: Go to the **View** menu and click on **Terminal** to open an integrated terminal window in VS Code.  
1. **Launch Python Shell**: Type `python` and press `Enter` to start the Python interactive shell.  
1. **Interactive Python**: The Python Shell allows you to write and test code interactively. For example, type `2+3` and press `Enter`. It will display the result `5` on the next line.  
1. Try the following code snippets in the Python Shell:  
    ```python
    2 + 3  # Addition of two numbers
    "hello" + " world"  # String concatenation
    a = 2  # Assign a value to a variable
    print(a)  # Print the variable value
    ```
1. The Python Shell can function as a calculator:  
    ```python
    2 + 2      # Basic addition
    2 + 2.0    # add an integer to a floating point number
    2 * 3      # 2 times 3
    2 ** 3     # 2 cubed
    2 ** 128   # Python supports very large integers
    16 / 3     # = 5.3333, Division returns a floating-point result
    16 // 3    # = 5, Integer division
    2 % 3      # Modulo (remainder of division)
    ```
1. **Exit the Shell**: To leave the Python Shell, type `exit()` and press `Enter`, or use the shortcut `Ctrl+Z` followed by `Enter`.  


### Running Python in Command Prompt

1. Open **Command Prompt** or **PowerShell** (on Windows) or **Terminal** (on Mac or Linux).  
2. Run `python` on Windows or `python3` on Mac/Linux to start the interactive Python Shell.  
3. Use the Shell exactly as described above to try out Python code.  


## Python Programming Basics

### Variables in Python

- Python variables can store different types of data, such as numbers, text, or boolean values.  
- Some common Python data types include:  
    - `int` (Integer): Whole numbers, e.g., `42`  
    - `float` (Floating point): Numbers with decimals, e.g., `3.14`  
    - `str` (String): Text, e.g., `"ECE 387"`  
    - `bool` (Boolean): True/False values  
    - `NoneType`: Represents the absence of a value, e.g., `None`  

#### Examples of Variables
```python
# Integer variable
x = 10
print(type(x))  # Outputs: <class 'int'>

# Float variable
pi = 3.14159
print(type(pi))  # Outputs: <class 'float'>

# String variable
name = "Stan Baek"
print(type(name))  # Outputs: <class 'str'>

# Boolean variable
is_active = True
print(type(is_active))  # Outputs: <class 'bool'>

# NoneType variable
data = None
print(type(data))  # Outputs: <class 'NoneType'>
```

#### String Concatenation and Casting

```python
# String concatenation
first_name = "Stan"
last_name = "Baek"
full_name = first_name + " " + last_name
print(full_name)  # Outputs: Stan Baek

# Combining strings with numbers
age = 726
# This raises an error: print("Age: " + age)
# Fix by converting age to a string
print("Age: " + str(age))  # Outputs: Age: 726
```

### Math Operators in Python

- Basic operators:
    - Addition: `+`
    - Subtraction: `-`
    - Multiplication: `*`
    - Division: `/`
- Advanced operators:
    - Exponentiation: `**` (e.g., `2**3` gives `8`)
    - Modulo: `%` (e.g., `5 % 2` gives `1`)
    - Integer Division: `//` (e.g., `7 // 2` gives `3`)  

### Logic and Comparison Operators

Python supports logical operators for making comparisons and combining conditions:  

| **Operator** | **Meaning**            | **Example**             |
|--------------|------------------------|-------------------------|
| `==`         | Equal to               | `x == y`                |
| `!=`         | Not equal to           | `x != y`                |
| `>`          | Greater than           | `x > y`                 |
| `<`          | Less than              | `x < y`                 |
| `>=`         | Greater than or equal  | `x >= y`                |
| `<=`         | Less than or equal     | `x <= y`                |
| `and`        | Logical AND            | `x > 5 and x < 10`      |
| `or`         | Logical OR             | `x < 5 or x > 10`       |
| `not`        | Logical NOT            | `not (x > 5)`           |


#### Example:

```python
x = 6
y = 7
print(x == 6 and y == 7)  # Outputs: True
print(x == 6 or y == 6)   # Outputs: True
print(not (x == 6 and y == 6))  # Outputs: True
```

### Working with Strings

1. In Python, strings are sequences of characters enclosed in quotes, like `"Stan Baek is the legendary pirate captain."` Numbers can be integers (e.g., `42`) or decimals (e.g., `3.14`).  

1. Try the following code in the Python console:  
    ```python
    # A string variable
    name = "Stan Baek"
    ```

1. To check the type of a variable, use the `type()` function:  
    ```python
    type(name)
    ```  
    This will return `<class 'str'>`, indicating that the variable `name` is a string.  

1. Add another string variable:  
    ```python
    title = "the legendary pirate captain"
    ```  

1. Strings can be combined (concatenated) using the `+` operator:  
    ```python
    character = name + ": " + title
    print(character)  # Outputs: Stan Baek: the legendary pirate captain
    ```  

1. If you try to combine a string with a number directly, Python will raise an error:  
    ```python
    # Integer variable
    age = 726
    # This will cause a TypeError
    print(character + age)
    ```  

1. To fix the error, convert the number to a string using the `str()` function:  
    ```python
    print(character + " is " + str(age) + " years old.")
    ```  
    This will output:  
    ```
    Stan Baek: the legendary pirate captain is 726 years old.
    ```

1. You can also ask for user input with the `input()` function:  
    ```python
    age = input("How old are you? ")
    print(type(age))  # By default, input is a string

    # Convert the input to an integer
    age = int(age)
    print(f"You are {age} years old!")
    ```

1. When creating string variables, you can use either single quotes (`'`) or double quotes (`"`). However, be consistent in your code to avoid confusion.


### Functions and Modules

#### Defining Functions  
```python
def add(a, b):
    """Returns the sum of two numbers."""
    return a + b

print(add(5, 7))  # Outputs: 12
```

#### Using Modules 
```python
# Import the math module
import math
print(math.sqrt(16))  # Outputs: 4.0
print(math.pi)        # Outputs: 3.141592653589793
```


### Python Modules
1. You can add extra functionality to Python by importing modules. Modules are collections of additional functions built by others. For example, to access advanced mathematical functions, you can import the `math` module:
    ```python
    import math
    print(math.sqrt(16))    # Outputs 4.0
    print(math.sin(math.pi/2))  # Outputs 1.0
    print(math.cos(0))  # Outputs 1.0
    ```
1. In Python, it's a convention to import all required modules at the top of the script. This ensures all dependencies are loaded before they're used and makes the code easier to understand. You can also import specific functions from a module:
    ```python
    from math import sqrt, sin, pi
    print(sqrt(16))
    print(sin(pi/2))
    ```
1. We can also import individual functions from a module
    ```python
    from math import sqrt, sin, pi
    print(sqrt(16))
    print(sin(pi/2))
    cos(0)   # error because cos was not imported
    ```
1. You can also use an alias for a module:
    ```python
    import math as m
    m.sqrt(16)
    m.sin(m.pi/2)
    ```

### Conditional Statements

1. The `if`, `else`, and `elif` statements control the flow of execution based on conditions. The basic syntax is:
    ```Python
    if expression:
        statements
    elif expression:
        statements
    else:
        statements
    ```
1. If no action is needed for a certain condition, you can use the `pass` statement:
    ```Python
    if expression:
        pass       # Do nothing.
    else:
        statements
    ```
1. Example:
    ```Python
    word = input("Enter a four-letter word: ")
    if len(word) == 4:
        print(word, "is a four-letter word. Well done.")
    elif len(word) == 3:
        print(word, "is a three-letter word.")
    else:
        print(word, "is not a four-letter word.")
    ```

### Loops
1. Let's start with a simple `while` statement.
    ```Python
    x = 1
    while x < 5:
        print(x)
        x = x + 1
    ```
1. We can use `break` to exit a loop:
    ```Python
    while True:
        print(x)
        x -= 1
        if x == 0:
            break
    ```
1. The `for` loop is commonly used in Python:
    ```Python
    for i in [0, 1, 2, 3, 4]:
        print(i)
    ```
1. We can also use `range()`:
    ```Python
    for i in range(5):  # Loops through 0 to 4
        print(i)
    ```

## Online Tutorials

- [Python in easy steps](https://ineasysteps.com/wp-content/uploads/2018/07/Python-in-easy-steps-2nd-Ed-TOCCh1.pdf)


## Python Style Guide 
- [PEP8](https://www.python.org/dev/peps/pep-0008/)

## Summary  

This guide introduces you to the basics of Python programming:
- **Running Python** in VS Code or the command line
- Using **variables**, **operators**, and **logic**
- Writing and calling **functions**
- Using built-in and external **modules**
- Controlling program flow with **conditionals** and **loops**


Practice writing your own code to build confidence with Python. Remember, the best way to learn programming is through hands-on experience. Happy coding! 🐍