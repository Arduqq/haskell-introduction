module PlaneGeometry (area,perimeter) where

area :: Float -> Float -> Float -> Float
area a b c = sqrt(s*(s-a)*(s-b)*(s-c))
    where s = (perimeter a b c)/2

perimeter :: Float -> Float -> Float -> Float
perimeter a b c = a+b+c