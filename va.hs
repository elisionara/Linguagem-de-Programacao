{-variáveis anônimas: é representada com um underscore-}
{-função and: se existir um falso, ela retorna tudo falso-}

myand :: Bool -> Bool -> Bool

myand False _ = False
myand _ False = False
myand True True = True 