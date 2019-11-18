# Introduction to functional programming with Haskell
## Exercise 1
- Haskell supports prefix and infix commands
	- 2+2 <=> (+)22
	- integer exponentiation: 2^100
	- float exponentiation: 2**100
	- the "-" used in -3 is a unary operator
		- we didn't write the number -3, but we applied the operator "-" to the number 3.

## Booleans:
- basic values are `True` and `False`
- `&&` - AND
- `||` - OR
- `not` - NOT
- `==` EQUAL TO
- `/=` - NOT EQUAL TO
- `<=,>=,<,>`
	
>>>
*Random Umwandlung in den Infix:* ( 1 < 3  || 6 < 1 ) && 5 == 6
-> (&&) ( (==)56 )( (||) ( (<)13) ( (<)61 ) )
<<<

## Functions and Types:
- The Haskell notation `f::X->Y` indicates that f is a function taking arguments of type X and returning results of type Y.  
	```Haskell 
	sin::Float->Float
	:type expression - *check type*
	?> (*) :: Num a => a->a->a
	```

### Numeric types:
- *Int* - type for limited precision integers: -2^29 <= n < 2^29
- *Integer* - type for unlimited precision integers
- Float, Double
- Rational - arbitrary precision rational numbers: Integer/Integer*
	- A rational number can be constructed by using the %-opertator:
	> `:module + Data.Ratio`
- if we type `:set +t`, then GHCi will provide information about types for each expression
- `[]` - lists 

## Functional composition
- Suppose `f::Y->Z` and `g::X->Y` are two given functions. Then their composition is given by: `f.g::X->Z`; `(f.g)x = f(g(x))`
	
## Expressions, types and values
- In Haskell, every well-formed expression, by definition, a well-formed type. Given an expression for evaluation:
		- GHCi checks that the expression is syntactically correct;
		- If it is, GHCi infers a type for the expression or checks that the type assignment is correct
		- Provided the expression is well-typed, GHCi evaluates the expression by reducing it to its normal form
- We can define functions in prompt directly by using the `let` expression:
		- `let <def> i <exp>`
- Names for functions and values begin with a lowercase letter; data constructors begin with an uppercase letters, as well as Types, Type classes and Modules.
- An operator is a special kind of function name that appears between its arguments, such as + in x+y. Operator names begin with a symbol. Any function can be converted into any operator by enclosing it in back quotes, and any operator can be converted into a function by parenthesses. 
	- X - one element
	- XS - list of elements
	- XSS - list of lists
	- XS ++ YS - concatanation of lists XS and YS
- Operators have different binding power, e.g.
	- 3*4+1 => (3*4)+2
	- XS++YSS!!3 means XS++(YSS!!3)
	- XS!!n - takes an element number n from a list XS
- *Indeces start from 0*