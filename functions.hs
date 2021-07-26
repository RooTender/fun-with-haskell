import Data.List
import System.IO

primeNumbers = [3,5,7,11]
morePrime = primeNumbers ++ [13, 17, 19, 23, 29]

-- this function combines values to list
favNums = 2 : 7 : 21 : 66 : []

morePrimes2 = 2 : morePrime

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1

firstPrime = head morePrimes2

lastPrime = last morePrimes2

everythingButLast = init morePrimes2

first3Primes = take 3 morePrimes2

removedPrimes = drop 3 morePrimes2

-- does list contains
-- check also 'notElem'
is7InList = 7 `elem` morePrimes2