# Introduction to functional programming with Haskell
## Exercise 3
### Types
- strong: each object has unique type
- static
- type inference


The type Bool of boolean values is defined as follows: 
```Haskell
[keyword] [type name] = [values]
data Bool = False | True
```
The type Bool has three values, not two:
False, True, and undefined

```Haskell
not False = True
not True = False
```

> If we evaluate to True in GHCi, then computation sticks in an infinite loop, and the value of to True is undefined.

> Everything before "=>" is called a class constraint. 
> ```Haskell
> (+):: Num a => a -> a -> a
> ```
> The definition of (+) asserts that (+) ist of type a->a->a for any **number type** a.
> A type class sch as a Num, has a collection of named methods, such as (+), which can be defined differently for each instance of the type class. (Overloading)
> Type classes. therefore; provide overloaded functions: same name, bu different definitions.

```Haskell
class Eq a where
    (==),(/=) :: a -> a -> Bool
    x /= y = not (x==<)
```
If we define new types, we cannot use (==) and (/=) unless we make an instance declaration, which, in most cases, can be automatically done by using `deriving (TypeClasses)`

The TypeClass Ord needs Eq as a superclass, because it makes use of (==) in the default definition of the compatison operators.
The TypeClass Show is used for displaying results, because Haskell is unable to do so, unless the type of the result is a member of Show.

### Simple printing and IO
Printing the result involves the following function:
```Haskell
put StrLn :: String -> IO()
```

> The type IO is a special type for input/output computations, that, when executed,have some interaction with outside world and return a value of type a.
> If the return value is not interesting, we use the null-tuple value ().

Assume that we want to text to uppercase letters
`toUpper from Data.Char module`

### Syntax in funcitons
Pattern matching with templates.

> **Task:** write a program realising component product of two vectors a = (a1,a2) b = (b1,b2) a*b = (a1b1,a2b2)
> fst (a1,a2) = a1
> snd (a1,a2) = a2

We sed in the definitions of first and third, the so called, don't care pattern.

Pattern matching with lists and **list comprehension**.

`[a+b | (a,b) <- xs]`

`[[elements of the list] [separator] [comprehension]`

`{3x+4 | x of N, X <= 10} => [3x+4 | x <- [1..10]]`

In General:
`[<expression for list elements> | cond1, cond2, ... condn`]