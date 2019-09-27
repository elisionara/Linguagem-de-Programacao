{-Lista: estrutura de dados que pode conter um número indeterminado de elementos, e cada elemento desse é igual a um nó, que aponta para outros nó, que se encontra como sucessor-}
{-cabeça da lista: primeiro elemento da lista
head: retorna a cabeça da lista
tail: retorna o corpo da função-}
{-
: é um operador de soma dentro da lista
Ex.: Prelude > head [1,2,3]
     1 
     Prelude> tail [1,2,3]
     [2,3]
     Prelude> 1:[2,3]
     [1,2,3]
     Prelude> 1:2:3:[]
     [1,2,3]-}
{-Tamanho da lista: size-}
size_list :: [Int] -> Int

size_list [] = 0 {-lista vazia[] tem tamanho 0-}
size_list (x:xs) = 1 + size_list xs{-obtenção da cabeça e da calda da lista-}