{-
Crie uma funcao que receba dois numeros x e y e determine se eles sao coprimos. Dois numeros sao ditos
coprimos se o maximo divisor comum entre eles e 1. Leia x e y do teclado.
-}

mdc :: Int -> Int -> Int
mdc a b =
    if b == 0 then
        a
    else
        let resto = mod a b
        in mdc b resto

coprimo :: Int -> Int -> Bool
coprimo x y = mdc x y == 1

main = do
    putStrLn "Digite o numero x: "
    xString <- getLine
    let x = read xString :: Int
    putStrLn "Digite o numero y: "
    yString <- getLine
    let y = read yString :: Int
    print(coprimo x y)
