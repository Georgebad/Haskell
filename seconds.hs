seconds :: (Int,Int)->(Int,Int,Int)->Int

now::Int->Int
now 2 = 28  
now e =if (e <8 && mod e 2 == 0 ) then 30 else if(e <8 && mod e 2 /= 0 ) then 31 else if (e > 7 && mod e 2 ==0) then 31 
       else 30 

nextM :: Int->Int
nextM h = if (h-1==0) then 0 else month(h-1)

month::Int->Int
month 0 = 0
month b = now b + nextM b

day::Int->Int
day a= a*86400

hours::Int->Int
hours c = c*3600

minutes::Int->Int
minutes d= d*60

seconds (d,mm) (h,m,s) 
        |d>31 || mm>12 || h>23 || m>59 || s>59 = -1
        |d<0 || mm<=0 || h<0 || m<0 || s<0 = -1 
        |mm<8 && mod mm 2 == 0 && d>30  = -1
        |mm>7 && mod mm 2 /=0 && d >30 = -1
        |mm ==2 && d>28 = -1
        |otherwise= day (d-1) + day (month (mm-1)) +hours h +minutes m +s