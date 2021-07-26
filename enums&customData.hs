import Data.List
import System.IO

---- module creating
--module SampFunctions (getClass, doubleEvenNumbers) where
---- module importing
--import SampFunctions

-- enum
data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOf = print(barryBonds Outfield)
-- barryInOf barryBonds
-- True


data Customer = Customer String String Double
    deriving Show

tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.50

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b
-- getBalance tomSmith
-- 20.5

data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper beats Rock"
shoot _ _ = "Whatever..."


data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving Show

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 - y)

-- funky operators . $
sumValue = putStrLn(show (1+2))
sumValue2 = putStrLn . show $ 1 + 2