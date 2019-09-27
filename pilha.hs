{-Conceito: o primeiro elemento a entrar, é o último elemento a sair, ou seja, o último elemento a entrar é o primeiro elemento a sair-}
{-Função push: adiciona elementos na pilha-}
{-Função pop: remover elementos do topo da pilha
Função topo: devolve o elemento que está no topo da pilha 
Função is_empty: verifica se a pilha está vazia
-}

{-
push :: [Int] -> Int -> [Int]
push pilha x = pilha ++ [x]
-}

{-
topo :: [Int] -> Int
topo [x] = x
topo (x:xs) = topo xs
-}

{-
pop :: [Int] -> [Int]
pop [] = error "Pilha vazia"
pop (x:xs) | (x == (topo (x:xs))) = xs
		   |  otherwise = x:(pop xs)
-}

{-
is_empty :: [Int] -> Bool
is_empty [] = True
is_empty _ = False
-}

{-par com if-then/else
ifpar :: Int -> Bool
ifpar n = if (mod n 2 == 0) then True else False

--par com case - of
casepar :: Int -> Bool
casepar n = case (mod n 2 == 0) of
	        True -> True
	        False -> False

--par com garda - otherwise
guardapar :: Int -> Bool
guardapar n | (mod n 2 == 0) = True
			| otherwise = False
-}

{-
busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (x:xs) n | (x == n) = True
			   | otherwise = busca xs n
-}

{-maior elemento dentro da lista
maior :: [Int] -> Int

maior [x] = x
maior (x:xs) | (x > maior xs) = x
			 | otherwise = maior xs
-}

{-menor elemento da lista
menor :: [Int] -> Int
menor [x] = x
menor (x:xs) | (menor xs > x) = x
			 | otherwise = menor xs
-}

{-verificar todos os pares da lista
todos_pares :: [Int] -> Bool
todos_pares [] = False
todos_pares (x:xs) | (mod x 2 /= 0) = False
				   | otherwise todos_pares xs
-}

{-verificar todos os ímpares
todos_impares :: [Int] -> Bool
todos_impares [] = False
todos_impares (x:xs) | (mod x 2 == 0) = False
				     | otherwise todos_impares xs
-}

{-
inverse_list :: [t] -> [t]
inverse_list [] = []
inverse_list (x:xs) = inverse_list xs ++ [x]
-}

{-Tamanho da lista: size
size_list :: [Int] -> Int
size_list [] = 0 {-lista vazia[] tem tamanho 0-}
size_list (x:xs) = 1 + size_list xs{-obtenção da cabeça e da calda da lista-}

mylength :: [t] -> Int
mylength [] = 0
mylength (x:xs) = 1 + mylength xs
-}

{-
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
-}

{-
aux_ordena:: [Int] -> [Int] -> [Int]
aux_ordena lista_ordenada [] = lista_ordenada
aux_ordena lista_ordenada (x:xs) = aux_ordena (lista_ordenada++[get_menor(x:xs)]) (remov_menor(x:xs))

ordena :: [Int] -> [Int]
ordena [] = []
ordena lista = aux_ordena [] lista
-}

{-
type Nome =  String
type Idade = Int
type Linguagem = String

type Pessoa = (Nome, Idade, Linguagem)

pessoa ::  Pessoa
pessoa = ("Elis", 20, "C++")
-}