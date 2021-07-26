import Data.List
import System.IO

-- advanced class
data Employee = Employee { name :: String,
                           position :: String,
                           idNum :: Int
                           } deriving (Eq, Show)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 10}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 11}

isSamPam = samSmith == pamMarx

samSmithData = show samSmith


-- overriding instances
data ShirtSize = S | M | L

instance Eq ShirtSize where
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False

instance Show ShirtSize where
    show S = "Small"
    show M = "Medium"
    show L = "Large"

smallAvail = elem S [S, M, L]

theSize = show S

class MyEq a where
    areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
    areEqual S S = True
    areEqual M M = True
    areEqual L L = True
    areEqual _ _ = False

newSize = areEqual M M