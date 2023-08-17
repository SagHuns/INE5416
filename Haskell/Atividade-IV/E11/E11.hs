{-
 Crie uma funcao que receba dois numeros x e y e retorne o maximo divisor comum (DICA: pesquise sobre
o Algoritmo de Euclides). Leia x e y do teclado.
-}

mdc :: Int -> Int -> Int
mdc a b =
    if b == 0 then
        a
    else
        let resto = mod a b
        in mdc b resto

main = do
    putStrLn "Digite o numero a: "
    aString <- getLine
    let a = read aString :: Int
    putStrLn "Digite o numero b: "
    bString <- getLine
    let b = read bString :: Int
    print(mdc a b)
