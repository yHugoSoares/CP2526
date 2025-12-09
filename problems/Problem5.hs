module Problem5 where

import Nat hiding (fac)
import Cp

-- Factorial using natural numbers
-- The Nat module already has a fac function, but we define our own version
factorial :: Integer -> Integer
factorial = cataNat (either (const 1) g)
  where g n = (n + 1) * factorial n

-- Test function using simpler recursive definition
testFactorial :: Integer -> Integer
testFactorial n = simpleFac n
  where
    simpleFac 0 = 1
    simpleFac n = n * simpleFac (n - 1)
-- Expected: testFactorial == 120