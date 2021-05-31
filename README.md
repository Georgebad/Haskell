## Haskell

This repo contains sort and small programs for haskell language that have implemented for hugs compiler.   
Below you can find the purpose of each program.

#### **_counter.hs_**
Take an integer as input and checks if these digits 0,3,6 and 9 exists in the integer. If they are exists, calculate how many times are in the given number.

#### **_gcd.hs_**
Take 3 positive integers as input (m,n,k) and finds the k-th greates common divisor of m and n.

#### **_seconds.hs_**
Calculates the seconds that have passes from the begging of the year trhow a given date and time. For example if we want to calculate the second until 20/5 23:55:30
the given input it will be seconds (20,5) (23,55,30).

#### **_sum.hs_**
Take as input one function f with type (int->int->int->int) and 2 integers a and b and calculate the sum from k=a to b of f(a,k,b).

#### **_nearest.hs_**
Take as input a list of integer and one extra integer(n) and returns the position of the list that contains the elemnts whith smallest different from n.

#### **_smooth.hs_**
Take as input a list of integer(s) and one extra integer(k) and return a list of integers. In that list the i-th element is the integer part of the average value of k-th elements that are located at i,i+1,..., i+k−1 positions at s list. The list that we retun has |s|-k+1 elements, where |s| is the length of the list s if |s|>k else the return list is an empty list. 

#### **_swap.hs_**
Take as input some words and swap their position per 2. For exaple the string " you are smart " it will converted to " are you smart". Another example is the string "east west north south" it will converted to "west east south north".

#### **_mapi.hs_**
Take as input a list(s) with type [u] and a function (u->Int->v) and returns a list with type [v]. The returned list has the same number of elements as s and the i-th element is f(s(i), i).An example is for input mapi [90,80..10] (+) the result is [91,82,73,64,55,46,37,28,19].
