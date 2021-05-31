-----Find divisors-----------

divisors::Int->[Int]
divisors a = [x | x <- [1..(a-1)], mod a x == 0]

-----Kth number in a list----

elemIntList :: Int ->[Int] -> Int
elemIntList 1 (h:t) = h
elemIntList a (h:t)=  if a > length (h:t) then 0 else elemIntList(a-1) t
elemIntList a []=error "elemintList :index out of range"

-----check if number exist----

memberInt ::Int->[Int]->Bool
memberInt a (h:t) = a ==h || memberInt a t 
memberInt a [] = False

kgcd :: Int->Int->Int->Int
kgcd m n k 
    | m<0 || n<0 || k<0 = error "kgcd :negative argument"
    |otherwise = result m n k 
    where result::Int->Int->Int->Int
          check::[Int]->[Int]->[Int]->[Int]
          final::[Int]
          final=[]
          check [] b c = c 
          check a b c =  if memberInt (head a) b ==True then (head a ):c else c
          
          makelist::[Int]->[Int]->[Int]->[Int]
          makelist a b c  = if (null a == False ) then (check a b c ++ makelist (tail a) b c) else c 
          result m n k = elemIntList k (makelist (reverse(divisors m)) (reverse (divisors n)) final )