module Problem2 where

import List
import Cp

-- Sum using catamorphism (using existing cataList from List module)
sumList :: Num a => [a] -> a
sumList = cataList (either (const 0) (uncurry (+)))

-- Product using catamorphism
productList :: Num a => [a] -> a
productList = cataList (either (const 1) (uncurry (*)))

-- Length using catamorphism
lengthList :: [a] -> Int
lengthList = cataList (either (const 0) (\(_, n) -> n + 1))