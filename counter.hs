counter ::Integer->Int
counter a = if (mod a 10==0 || mod a 10==3|| mod a 10==6|| mod a 10==9) then 1 else 0

count :: Integer -> Int
count n = counter (abs(n)) + next (abs(n))
        where next ::Integer->Int
              next b= if(div b 10 == 0) then 0 else count(div b 10) 