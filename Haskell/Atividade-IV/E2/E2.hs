{-
Crie uma funcao que receba um numero x, negativo ou positivo, 
e retorne seu valor absoluto. Leia x do teclado.
-}

absoluto :: Float -> Float
absoluto x = abs(x)

main = do
    putStrLn "Digite o numero x: "
    xString <- getLine
    let x = read xString :: Float
    print(absoluto x)