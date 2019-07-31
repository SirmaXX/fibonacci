module Fibo exposing (fib, fibo, fibs, ml)

--birinci fibonacci


fibo : Int -> Int
fibo n =
    if n <= 1 then
        1

    else
        fibo (n - 1) + fibo (n - 2)



--ikinci fibonacci kaynakça: https://gist.github.com/CliffordAnderson/040342603be0b466b997097cc06a55ee


fib x =
    case x of
        0 ->
            1

        1 ->
            1

        _ ->
            fib (x - 1) + fib (x - 2)


ml x =
    List.range 1 x


fibs x =
    List.map fib (ml x)
