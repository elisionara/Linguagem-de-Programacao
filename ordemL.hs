{-Algoritmos de ordenação de listas:
  Função ordena: vai ordenar uma lista de inteiros em ordem crescente
  Função remove_menor: vai remover o menor elemento da lista
  Função get_menor: retorna o menor elemento da lista
  Função ordena: vai receber uma lista e vai retornar uma lista ordenada em ordem crescente-}

lista :: [Int]
lista = [10,2,3,1,5]

get_menor :: [Int] -> Int

get_menor [x] = x
get_menor (x:xs) | (x < get_menor xs) = x
                 | otherwise = get_menor xs

remov_menor:: [Int] -> [Int]

remov_menor [] = []
remov_menor (x:xs) | (x == (get_menor(x:xs))) = xs {-é passado toda a lista e depois elimina a cabeça da lista até a lista acabar-}
                   | otherwise = (x : remov_menor xs) {-Formando a lista, e passando o resto da lista-}

aux_ordena:: [Int] -> [Int] -> [Int]

aux_ordena lista_ordenada [] = lista_ordenada
aux_ordena lista_ordenada (x:xs) = aux_ordena (lista_ordenada++[get_menor(x:xs)]) (remov_menor(x:xs))

ordena :: [Int] -> [Int]

ordena [] = []
ordena lista = aux_ordena [] lista