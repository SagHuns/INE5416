{-
Crie uma funcao que receba dois valores booleanos (x, y) retorne o resultado do “ou exclusivo” (XOR)
sobre eles. A funcao apenas deve usar os operadores &&, || e not. Leia os valores x e y do teclado
-}


xor :: Bool -> Bool -> Bool
xor x y | (x && not y) = True
        | (not x && y) = True
        | otherwise = False


main = do
    -- Recebendo as entradas e transformando para Bool
    putStrLn "Digite o valor booleano x: "
    xString <- getLine
    let x = read xString :: Bool
    putStrLn "Digite o valor booleano y: "
    yString <- getLine
    let y = read yString :: Bool
    print(xor x y)
    
