mapi :: [u]->(u->Int->v)->[v]
mapi [] f = []
mapi s f =create  s f 1 

create :: [u]->(u->Int->v)->Int->[v]
create [] b c = []
create a b c = b (head a) c :(create (tail a) b (c+1)) 