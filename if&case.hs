import Data.List
import System.IO

-- lambda operator
dbl1to10 = map (\x -> x * 2) [1..10]

-- if ... else ...
doubleEvenNumber y =
    if (mod y 2 /= 0)
        then y
        else y * 2

-- case
getClass :: Int -> String
getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go to hell"