{-Função inverte: recebe uma lista e inverte a mesma-}

inverte_lista :: [t] -> [t]

inverte_lista [] = []
inverte_lista (x:xs) = (inverte_lista xs)++[x] {-concatena a cabeça da lista com o corpo da lista-}
