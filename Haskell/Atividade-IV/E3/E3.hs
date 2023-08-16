{-
Crie uma funcao que receba a base e a altura de um triangulo e calcule a 
area do mesmo. Leia a base e a altura do teclado.
-}

triangulo :: Float -> Float -> Float
triangulo b h = (b * h) / 2

main = do
    -- Recebendo as entradas e transformando para Float
    putStrLn "Digite a base do triangulo: "
    bString <- getLine
    let b = read bString :: Float
    putStrLn "Digite a altura do triangulo: "
    hString <- getLine
    let h = read hString :: Float

    -- Chamada da funcao e retorno
    print(triangulo b h)

