{- Extração de dados da Tupla:
comando fst: extrai o primeiro elemento de uma tupla
comando snd: extrai o segundo elemento de uma tupla-}

nomes :: (String, String, String)

nomes = ("Alex", "Elis", "Sabrina")

selec_prim (x, _, _) = x
selec_sec (_, y, _) = y
selec_ter (_,_, z) = z