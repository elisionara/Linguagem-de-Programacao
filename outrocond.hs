{-par com if-then/else-}
ifpar :: Int -> Bool

ifpar n = if (mod n 2 == 0) then True else False

{-par com case - of-}
casepar :: Int -> Bool

casepar n = case (mod n 2 == 0) of
	        True -> True
	        False -> False

{-par com garda - otherwise-}
guardapar :: Int -> Bool

guardapar n | (mod n 2 == 0) = True
			| otherwise = False