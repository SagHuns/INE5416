{-
Crie uma funcao que resolva uma equacao de segundo grau da forma ax2 + bx + c utilizando a formula
de Bhaskara. Leia os coeficientes a, b e c do teclado.
-}

bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c =
    let x1 = (-b + sqrt (b*b - (4 * a * c)))/2*a
        x2 = (-b - sqrt (b*b - (4 * a * c)))/2*a
    in (x1, x2)

main = do
    -- Recebendo as entradas e transformando para Int
    putStrLn "Digite o coeficiente a: "
    aString <- getLine
    let a = read aString :: Float
    putStrLn "Digite o coeficiente b: "
    bString <- getLine
    let b = read bString :: Float
    putStrLn "Digite o coeficiente c: "
    cString <- getLine
    let c = read cString :: Float
    print(bhaskara a b c)



