# Introduction to functional programming with Haskell
## Exercise 4
> **Task:** Write a function taking a list of Integers and returning its sum ([1,2,3,4] => 1+2+3+4=10)
```Haskell
sum1[] = 0 -- pattern matching with lists, terminating criterion for recursion
sum1(x:xs) = x+sum1 xs
```
>>> 
    x - thing
    xs - list of things
    xss - list of list of things

### Guards and where
Pattern matching is used to check if the input of our function is constructed in a certain way. Construction with guards is used to check conditions.
>>>
    (insert classic sign(x)-function here)
    or you can use **guards**


```Haskell
| n>0 = 1
| n==0 = 0
| otherweise= (-1)
```

In general, *otherwise* ist not necessary. *Where* realizes sharing of sub-expressions.

>>> 
    **Task:** Write a function calculating real roots of a quadratic equation; two exceptions:
        - ax²+bx+c=0
        - if 0=0 - not quadrating complex root

> Computing if complex or not: D = b²-4ac<0

Although, *let* and *where* play a similar role, it is preferred to be used where clause ist, because it can used across guards.

>>>
     **Task:** Write four different funcitons calculating the area of an arbitrary triangle by using the *Heran's formula*: T = sqrt(s(s-a)(s-b)(s-c)). where a,b,c are lengths of the sides, and s=(a+b+c)/2 is the semiperimeter.
     1. straightforward definition
     2. using let
     3. using where
     4. using extra functions

### Defining own modules of functions
>>>
    [module] [Name] (function1, function2, ...) where 
    The module has to be stored in a file called modulename.hs