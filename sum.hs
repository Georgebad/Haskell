sumfab :: (Int->Int->Int->Int)->Int->Int->Int
--sumfab f a b = if a==b then  f a a b else sumfab f a m + sumfab f (m+1) b 
        --where m =div (a+b) 2
sumfab f a b = if a==b then f a k b else sumfab f a (b-1) + f a k b
                where k = a   