import Data.List
import System.IO

addMe :: Int -> Int -> Int
addMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You are an adult"
whatAge _ = "You're a joke..."

factorial :: Int -> Int
factorial 0 = 1
factorial n
    | n < 0 = 0
    | otherwise = n * factorial (n - 1)

-- factorial alternative
prodFact :: (Num a, Enum a) => a -> a
prodFact n = product [1..n]

isOdd :: Int -> Bool
isOdd n
    | mod n 2 == 0 = False
    | otherwise = True

whatGrade :: Int -> String
whatGrade age
    | (age >= 5) && (age <=6) = "Kindergarten"
    | otherwise = "Whatever..."

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Batting Average"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "You're doing pretty good"
    | otherwise = "You rocks!"
    where avg = hits / atBats

main = do
    putStrLn "Enter values"
    name <- getLine
    putStrLn ("Hello " ++ name)