m1 :: IO()
m1 = do putStrLn "Crie sua pilha adicionando elementos na pilha"
criaPilha :: [Int]
criaPilha = [10,2,3,1,5]

m2 :: IO()
m2 = do putStrLn "Adicione um elemento na pilha"
push :: [Int] -> Int -> [Int]
push pilha x = pilha ++ [x]

m3 :: IO()
m3 = do putStrLn "Elemento no topo da pilha"
topo :: [Int] -> Int
topo [x] = x
topo (x:xs) = topo xs

m4 :: IO()
m4 = do putStrLn "Remove o topo da pilha"
pop :: [Int] -> [Int]
pop [] = error "Pilha vazia"
pop (x:xs)	| (x == (topo (x:xs))) = xs
			|  otherwise = x:(pop xs)

m5 :: IO()
m5 = do putStrLn "Verifica se a pilha está vazia"
is_empty :: [Int] -> Bool
is_empty [] = True
is_empty _ = False

m6 :: IO()
m6 = do putStrLn "Verifica se existe o elemento digitado na pilha"
busca :: [Int] -> Int -> Bool
busca [] _ = False
busca (x:xs) n	| (x == n) = True
				| otherwise = busca xs n

m7 :: IO()
m7 = do putStrLn "Maior elemento da pilha"
maior :: [Int] -> Int
maior [x] = x
maior (x:xs)	| (x > maior xs) = x
				| otherwise = maior xs

m8 :: IO()
m8 = do putStrLn "Menor elemento da pilha"
menor :: [Int] -> Int
menor [x] = x
menor (x:xs)| (menor xs > x) = x
			| otherwise = menor xs


m11 :: IO()
m11 = do putStrLn "Inverso da pilha"
inverse_pilha :: [t] -> [t]
inverse_pilha [] = []
inverse_pilha (x:xs) = inverse_pilha xs ++ [x]

m12 :: IO()
m12 = do putStrLn "Tamanho da pilha"
mylength :: [t] -> Int
mylength [] = 0
mylength (x:xs) = 1 + mylength xs

m13 :: IO()
m13 = do putStrLn "Remove o menor elemento da pilha"
get_menor :: [Int] -> Int
get_menor [x] = x
get_menor (x:xs) | (x < get_menor xs) = x
                 | otherwise = get_menor xs

remov_menor:: [Int] -> [Int]
remov_menor [] = []
remov_menor (x:xs) | (x == (get_menor(x:xs))) = xs 
                   | otherwise = (x : remov_menor xs)

m14 :: IO()
m14 = do putStrLn "Ordena a pilha"
aux_ordena:: [Int] -> [Int] -> [Int]
aux_ordena lista_ordenada [] = lista_ordenada
aux_ordena lista_ordenada (x:xs) = aux_ordena (lista_ordenada++[get_menor(x:xs)]) (remov_menor(x:xs))

ordena :: [Int] -> [Int]
ordena [] = []
ordena lista = aux_ordena [] lista
