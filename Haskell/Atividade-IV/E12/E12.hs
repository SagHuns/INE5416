{-
Crie uma funcao que receba tres numeros x, y e z e retorne o maximo divisor comum (DICA: apenas
modifique o algoritmo anterior). Leia x, y e z do teclado.
-}

mdc :: Int -> Int -> Int
mdc a b =
    if b == 0 then
        a
    else
        let resto = mod a b
        in mdc b resto

mdc3 :: Int -> Int -> Int -> Int
mdc3 a b c = mdc (mdc a b) (mdc b c)


main = do
    putStrLn "Digite o numero a: "
    aString <- getLine
    let a = read aString :: Int
    putStrLn "Digite o numero b: "
    bString <- getLine
    let b = read bString :: Int
    putStrLn "Digite o numero c: "
    cString <- getLine
    let c = read cString :: Int
    print(mdc3 a b c)