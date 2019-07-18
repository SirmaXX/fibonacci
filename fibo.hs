module Lib
    ( slowFibo
    ,fibo
    ) where
import Data.Function ((&))

awfullySlowfibo::Integer->Integer
awfullySlowfibo 0 = 0
awfullySlowfibo 1 =1
awfullySlowfibo n =
    awfullySlowfibo (n-1)+ awfullySlowfibo(n-2)

slowFibo::Integer->[Integer]
slowFibo n = [awfullySlowfibo x|x<-[1..n]]

fiboBetter:: Integer->[Integer]->[Integer]
fiboBetter n []  = fiboBetter (n-1) [1]
fiboBetter 0 lst = lst
fiboBetter steps [x] =fiboBetter (steps-1) [(x-1)+x,x]
fiboBetter steps [x,y]=
   fiboBetter (steps-1) [x+y,x,y]
fiboBetter steps (x:y:rest) = 
    fiboBetter (steps-1) $(x+y):x:y:rest

fibo::Integer->[Integer]
fibo n=
    fiboBetter n [] & reverse
