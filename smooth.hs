helper::[Int]
helper=[]


calculate :: [Int]->Int->[Int]
calculate a b =if length a < b then helper 
else (mo a b):helper ++ calculate (tail a) b
 

sumElem::[Int]->Int->Int
sumElem a b = if b == 0 then 0 else (head a + sumElem (tail a) (b-1))

mo::[Int]->Int->Int
mo a b = div (sumElem a b) b 

smooth :: [Int]->Int->[Int]
smooth s k 
    |length s < k = error "smooth :Wrong syntax"
    |otherwise= calculate s k