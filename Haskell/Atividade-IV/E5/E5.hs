{-
Crie uma funcao que receba tres notas de um aluno (a, b, c), calcule a media e retorne se o aluno foi
aprovado ou reprovado. Para um aluno ser aprovado, ele deve possuir nota igual ou superior a 6. Leia as
notas dos alunos do teclado.
-}

aprovado :: Float -> Float -> Float -> String
aprovado a b c  | ((a + b + c) / 3 >= 6) = "Aprovado"
                | otherwise = "Reprovado"


main = do
    -- Recebendo as entradas e transformando para Float
    putStrLn "Digite sua primeira nota: "
    aString <- getLine
    let a = read aString :: Float
    putStrLn "Digite sua segunda nota: "
    bString <- getLine
    let b = read bString :: Float
    putStrLn "Digite sua terceira nota: "
    cString <- getLine
    let c = read cString :: Float

    -- Chamando e imprimindo o retorno da funcao
    print(aprovado a b c)
    