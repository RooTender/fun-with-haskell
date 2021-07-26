import Data.List
import System.IO

evenList = [2,4..20]

letterList = ['A','C'..'Z']

many2s = take 10 (repeat 2)
-- better is
-- many2s = replicate 10 2

cycleList = take 10 (cycle [1,2,3,4,5])

listTimes2 = [x * 2 | x <- [1..10]]

listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 10]

divisibleBy9N13 = [x | x <- [1..500], mod x 13 == 0, mod x 9 == 0]

sortedList = sort [7,9,1,8,3,5,4,2,6]

-- merge to one list with operator
sumOfLists = zipWith (+) [1,2,3] [4,5,6]

listBiggerThen5 = filter (>5) sortedList

evensUpTo20 = takeWhile (<= 20) [2,4..]

subOfListFromLeft = foldl (-) 1 [2,3,4,5]

subOfListFromRight = foldr (-) 1 [2,3,4,5]

pow3List = [3^n | n <- [1..10]]

multTable = [[x * y | y <- [1..10]] | x <- [1..10]]