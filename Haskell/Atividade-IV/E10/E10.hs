{-
Crie uma funcao que receba 3 valores numericos (a, b, c) e retorne o maior deles. Nao utilize nenhuma
forma de ordena¸cao. Leia os valores a, b, c do teclado.
-}

maior :: Float -> Float -> Float -> Float
maior a b c | (a >= b && a >= c) = a
            | (b >= a && b >= c) = b
            | (c >= a && c >= b) = c
            | otherwise = 0


main = do
    putStrLn "Digite o numero a: "
    aString <- getLine
    let a = read aString :: Float
    putStrLn "Digite o numero b: "
    bString <- getLine
    let b = read bString :: Float
    putStrLn "Digite o numero c: "
    cString <- getLine
    let c = read cString :: Float
    print(maior a b c)

