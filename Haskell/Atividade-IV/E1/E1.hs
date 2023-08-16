--  Crie uma funcao que receba dois numeros x e y e retorne x^y

. Leia x e y do teclado

-- Recebe dois numeros Float e retorna float
exponencial :: Float -> Float -> Float
exponencial x y = x ** y

main = do
    putStrLn "Informe o numero x: "
    xString <- getLine
    let x = read xString :: Float
    putStrLn "Informe o numero y: "
    yString <- getLine
    let y = read yString :: Float
    print(exponencial x y)

