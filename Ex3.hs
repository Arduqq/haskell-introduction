import Data.Char

-- not so elegant way
-- > componentProduct (1,2) (3,4) >> (3,8)
componentProduct :: (Double,Double) -> (Double,Double) -> (Double,Double)
componentProduct a b = ((fst a) * (fst b), (snd a) * (snd b))

-- elegant way
componentProduct' :: (Double,Double) -> (Double,Double) -> (Double,Double)
componentProduct' (a1,a2) (b1,b2) = (a1*b1,a2*b2)

first :: (x1,x2,x3,x4) -> x1
first (x1,_,_,_) ) = x1

third :: (x1,x2,x3,x4) -> x3
third :: (_,_,x3,_) -> x3

to :: Bool -> Bool
to b = not (to b)

toUpperFile :: FilePath -> FilePath -> IO()
toUpperFile infile outfile = do {text <- readFile infile;
                                writeFile outfile (map toUpper text);
                                putStrLn "Etzala fertig."}

--class Eq a where
--(==), (/=) :: a -> a -> Bool
--x /= y = not (x == y)

--class (Eq a) => Ord a where
--    (<), (<=), (>) :: & -> a -> Bool

--class Show where
--    show :: a -> String

--instance Eq Bool where
--x == y = if x then y else not y