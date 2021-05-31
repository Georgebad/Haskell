split::String->[String]
split [] = [""]
split(h:t)
    |h==' ' ="" :rest
    |otherwise=(h:head rest) :tail rest
               where rest=split t

flipWords::[String]->String

flipWords a
    |length a ==1 = head a
    |a==[] ="" 
    |(tail a)==[[]]="" 
    |(tail(tail a))==[[]] =head(tail a)++" "++ head a
    |otherwise= head(tail a)++" "++ head a++" "++flipWords(tail(tail a)) 


swap :: String->String
swap s=flipWords(split s)