{-
Crie uma funcao que dados dois pontos no espaco 3D, (x1, y1, z1) e (x2, y2, z2), compute a distancia
entre eles. Leia as posicoes dos pontos do teclado.
-}

distancia :: Float -> Float -> Float -> Float -> Float -> Float -> Float
distancia x1 y1 z1 x2 y2 z2 =
    sqrt((x2 - x1)**2 + (y2 - y1)**2 + (z2 - z1)**2)


main = do
    putStrLn "Digite a coordenada x do primeiro ponto: "
    x1String <- getLine
    let x = read x1String :: Float
    putStrLn "Digite a coordenada y do primeiro ponto: "
    y1String <- getLine
    let y = read y1String :: Float
    putStrLn "Digite a coordenada z do primeiro ponto: "
    z1String <- getLine
    let z = read z1String :: Float
    putStrLn "Digite a coordenada x do segundo ponto: "
    x2String <- getLine
    let x2 = read x2String :: Float
    putStrLn "Digite a coordenada y do segundo ponto: "
    y2String <- getLine
    let y2 = read y2String :: Float
    putStrLn "Digite a coordenada z do segundo ponto: "
    z2String <- getLine
    let z2 = read z2String :: Float
    print(distancia x y z x2 y2 z2)
