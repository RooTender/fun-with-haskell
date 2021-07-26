import Data.List
import System.IO

-- [1,2,3] == 1 : 2 : 3 : []
times4 :: Int -> Int
times4 x = x * 4

-- to co w nawiasie to info, że argument to funkcja, która coś zwraca. Następnie wartość z tej funkcji też zwracamy (choć można wykonywać na niej jakieś operacje)
doMult :: (Int -> Int) -> Int
doMult func = func 3

-- func = times4
num3Times4 = doMult times4

-- function returning a function
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

adds3 = getAddFunc 3

fourPlus3 = adds3 4

threePlusList = map adds3 [1,2,3,4,5]