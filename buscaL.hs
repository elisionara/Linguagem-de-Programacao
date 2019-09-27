{-verificação se um elemento pertence ou não a lista-}
{-!!: operador que retorna o n-ésimo número da lista-}

busca :: [Int] -> Int -> Bool

busca [] _ = False
busca (x:xs) n | (x == n) = True
			   | otherwise = busca xs n

{-maior elemento dentro da lista-}
maior :: [Int] -> Int

maior [x] = x
maior (x:xs) | (x > maior xs) = x
			 | otherwise = maior xs

{-menor elemento da lista-}
menor :: [Int] -> Int

menor [x] = x
menor (x:xs) | (menor xs > x) = x
			 | otherwise = menor xs

{-verificar todos os pares da lista-}
todos_pares :: [Int] -> Bool

todos_pares [] = False
todos_pares (x:xs) | (mod x 2 /= 0) = False
				   | otherwise todos_pares xs

{-verificar todos os ímpares-}
todos_impares :: [Int] -> Bool

todos_impares [] = False
todos_impares (x:xs) | (mod x 2 == 0) = False
				     | otherwise todos_impares xs