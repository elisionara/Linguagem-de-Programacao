module Main (main) where

import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))

main = do 	
	hSetBuffering stdout NoBuffering
	putStrLn "Quantidade de números: "
	n <- readLn
	lista <- leLista n
	let soma = sum lista
	putStrLn ("Soma dos números digitados: " ++ show soma)

leLista n 	| n <= 0 = return []
			| otherwise = do 	
				putStr "Digite um número: "
				x <- readLn
				xs <- leLista (n-1)
				return (x:xs)