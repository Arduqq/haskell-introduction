-- sum1 :: [a] -> a -- does not work because it does not work for every type (like string)
sum1 :: Num a => [a] -> a
sum1 [] = 0
sum1 (x:xs) = x + sum1 xs

-- classic sign function
signum1 n =  if n<0 then -1
            else if n==0 then 0
            else 1

signum2 n
    | n>0 = 1
    | n==0 = 0
    | otherwise =  (-1)

-- computing the quadratic equation (guards)

roots (a,b,c)
    | a == 0 = error "not quadratic"
    | b*b - 4*a*c < 0 = error "complex roots"
    | otherwise = ((-b - sqrt(b*b - 4*a*c))/(2*a),((-b + sqrt(b*b -4*a*c))/(2*a)))

roots1 (a,b,c)
    | a == 0 = error "not quadratic"
    | b*b - 4*a*c < 0 = error "complex roots"
    | otherwise = ((-b-r)/d, (-b+r)/d)
    where{d = 2*a; d2 = b*b - 4*a*c; r=sqrt(d2)}

--- triangle area
area1 :: Float -> Float -> Float -> Float
area1 a b c = sqrt((a+b+c)/2) * (sqrt((a+b+c)/2)-a) * (sqrt((a+b+c)/2)-b) * (sqrt((a+b+c)/2)-c)

area2 :: Float -> Float -> Float -> Float
area2 a b c = let s=(a+b+c)/2 in sqrt(s*(s-a)*(s-b)*(s-c))

area3 :: Float -> Float -> Float -> Float
area3 a b c = sqrt(s*(s-a)*(s-b)*(s-c))
    where s = (a+b+c)/2

area4 :: Float -> Float -> Float -> Float
area4 a b c = sqrt(s*(s-a)*(s-b)*(s-c))
    where s = (perimeter a b c)/2

perimeter :: Float -> Float -> Float -> Float
perimeter a b c = a+b+c