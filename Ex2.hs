succ1 n = n+1
double n = 2*n

infinity :: Integer
infinity = 1 + infinity

three :: Integer -> Integer
three x = 3

sqr :: Int -> Int
sqr x = x*x*x

x &+ y = x^y -- comment

func_1 x y = x * y + 2*x*y

func_3 y = func_1 2 y

(+++) :: Int -> Int -> Int
x +++ y = if even x*x*x
	then y
	else x+y