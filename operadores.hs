{-Funções de entrada e saída de funções:
show: imprimir strings ou valores numéricos.
printStr: imprimir uma frase, ou seja, palavras do tipo String.
read: ler valor numérico e converter para numérico.

Operadores e funções:
 operadores booleanos:         operadores numéricos:
 and (&&)                       div (retorna o quociente da divisão inteira)
 or (::)                        mod (retorna o resto da divisão inteira) 
 not (negação)                  abs <número> (retorna o valor absoluto)
 
 operadores relacionais:       operadores da biblioteca Char: é necessário importar da biblioteca import Data.Char, depois colocar no prelude Data.Char>
  >  (maior que)                ord 'caractere' (retorna o valor do caractere na tabela ASCII)              isLower (verifica se é minúscula)
  <  (menor que)                isUpper (verifica se é maiúscula)
  >= (maior ou igual)           toLower (converte para minúscula)
  <= (menor ou igual)           toUpper (converte para maiúscula)
  == (igual)                    isDigit (verifica se é um dígito)
  /= (diferente)                digitToInt (transforma para número)
                                intToDigit (transforma para caractere)

O Haskell não permite mistura de tipos em uma mesma lista
Polimorfismo: seu uso torna as funções genéricas
  :t head (retorna a lista e o primeiro elemento da lista, que é a cabeça da lista)
  length: retorna o tamanho da lista 
  -}
{-espera-se uma lista de inteiros, caso seja mylength [Int] -> Int-}
{-espera-se uma lista com qualquer tipo, caso seja mylength [t] -> Int-}
  mylength :: [t] -> Int

  mylength [] = 0
  mylength (x:xs) = 1 + mylength xs