{-
Crie uma funcao que receba dois numeros x e y e retorne o mınimo multiplo comum (DICA: use a funcao
do maximo divisor comum ja criada). Leia x e y do teclado.
-}

mdc :: Int -> Int -> Int
mdc a b =
    if b == 0 then
        a
    else
        let resto = mod a b
        in mdc b resto


mmc :: Int -> Int -> Int
mmc x y = div (x * y) (mdc x y)

main = do
    putStrLn "Digite o numero x: "
    xString <- getLine
    let x = read xString :: Int
    putStrLn "Digite o numero y: "
    yString <- getLine
    let y = read yString :: Int
    print(mmc x y)