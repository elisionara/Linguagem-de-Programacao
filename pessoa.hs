{-função type: constrói ou define novos tipos para serem usados futuramente -}

type Nome =  String
type Idade = Int
type Linguagem = String

type Pessoa = (Nome, Idade, Linguagem)

pessoa ::  Pessoa

pessoa = ("Elis", 20, "C++")