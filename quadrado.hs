{-Cláusula where(onde)-}

{-quadrado do número-}

quad :: Int -> Int

quad n = quad_n
            where
            	quad_n = n * n

{-Função lambda: função anônima
 Funções prontas: head, tail, ++, null(verificação de vazio), last, init(devolve a lista sem o último elemento, drop devolve a lista vazia)
 take(retorna os dois primeiros elementos da lista), words(devolve uma lista de cada elemento da string), reverse(devolve uma lista inversa), repeat(repete o dado potencialmente), replicate-}
