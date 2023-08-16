{-
Crie uma funcao que receba tres inteiros x, y e z e retorne se havendo varetas com esses valores em
comprimento pode-se construir um triangulo. Exemplo, com varetas de comprimento 4, 8 e 9 posso
construir um triangulo, porem com varetas de comprimento 10, 5 e 4 nao posso construir um triangulo.
Leia x, y e z do teclado.
-}

triangulo :: Float -> Float -> Float -> Bool
triangulo x y z | (x > y + z) = False
                | (y > x + z) = False
                | (z > y + x) = False
                | otherwise = True

main = do
    -- Recebendo as entradas e transformando para Float
    putStrLn "Digite o primeiro lado "
    aString <- getLine
    let a = read aString :: Float
    putStrLn "Digite sua segundo lado: "
    bString <- getLine
    let b = read bString :: Float
    putStrLn "Digite sua terceiro lado: "
    cString <- getLine
    let c = read cString :: Float

    -- Chamando e imprimindo o retorno da funcao
    print(triangulo a b c)