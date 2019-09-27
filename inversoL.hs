{-Função que recebe uma lista e retorna o inverso dessa lista-}
{- o 't' indica que é possível a utilização de qualquer tipo passado dentro da lista-}
{- ++ como operador indica que a lista será concatenada-}

{-inverse_aux :: [t] -> [t] -> [t]

inverse_aux [] list_inverse = list_inverse
inverse_aux (x:xs) list_inverse = inverse_aux xs list_inverse++[x]
-}

inverse_list :: [t] -> [t]

inverse_list [] = []
inverse_list (x:xs) = inverse_list xs ++ [x]