minIntList :: [Int]->Int
minIntList (h:[])=h
minIntList (h:t)=min h(minIntList t)

h::[Int]
h=[]

temp::[Int]->Int->Int
temp [] b =0
temp a b =abs((head a) - b)

checklist::[Int]->Int->[Int]
checklist a b  = if tail a == [] then  temp a b:h 
else  temp a b:h ++ checklist (tail a) b 

result::[Int]->Int->Int
result a b = if minIntList (checklist a b)  == head (checklist a b) then 1 
else 1 + result (tail a) b


nearest :: [Int]->Int->Int
nearest s n
    |length s ==0 = error "nearest :wrong syntax" 
    |length s ==1 = 1
    |otherwise    = result s n  