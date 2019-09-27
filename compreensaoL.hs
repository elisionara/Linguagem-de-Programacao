{-Compreensão de listas:
Prelude > [x:x,- [1..10]]
[1,2,3,4,5,6,7,8,9,10]
Prelude > [x:x,- [1..10], mod x 2 == 0
[2,4,6,8,10]
*Main > [1,2..10]
[1,2,3,4,5,6,7,8,9,10]
*Main > [x*x:x <- [1,2..10]]
[1,4,9,25,36,49,64,81,100]
*Main > [(x,y : x <- [1..5], y <- [6..10])] Gerando uma Tupla com combinação de números
*Main > [x*2 : x <- [1..10, x < 5]]
[2,4,6,8]-}

{-Função par-}

par :: Int -> Bool

par x = mod x 2 == 0

lista = [x | x <- [1..10], par x, x > 5]