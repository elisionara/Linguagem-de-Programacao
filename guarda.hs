{-guardas expressões booleanas iniciadas por uma barra '|' similares ao if na linguagem C 
otherwise: expressão que retorna um valor diferente dos valores disponíveis, ou seja ele é um outrocaso-}

guarda :: Int -> Int

guarda x | (x == 0) = 0
		 | (x == 1) = 1
		 | otherwise = 10
