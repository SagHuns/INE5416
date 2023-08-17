
-- Crie uma funcao que compute o n-esimo numero de Fibonacci. Leia n do teclado.


fibonacci :: Int -> Int
fibonacci n =
    if n == 0 then
        0
    else if n == 1 then
        1
    else
        let fib1 = fibonacci (n - 1)
            fib2 = fibonacci (n - 2)
        in  fib1 + fib2  -- O "in" serve para realizar uma operacao dentro do contexto de let


main = do
    putStrLn "Digite o numero n: "
    nString <- getLine
    let n = read nString :: Int
    print (fibonacci n)
