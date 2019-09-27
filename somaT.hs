{-Tuplas: conjunto de dados heterogêneos, ou seja, essa tupla aceita vários dados de tipos diferentes. 
Essas tuplas são colocadas dentro de parênteses -}

func :: (Int, Int) -> (Int, Int) -> (Int, Int)

func (a, b) (c, d) = (a+c, b+d)
