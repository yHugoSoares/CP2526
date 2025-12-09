module Problem3 where

import Probability

-- Coin flip distribution
coinFlip :: Dist Bool
coinFlip = D [(True, 0.5), (False, 0.5)]

-- Two consecutive flips
twoFlips :: Dist (Bool, Bool)
twoFlips = do
  first <- coinFlip
  second <- coinFlip
  return (first, second)

-- Probability of getting at least one heads
probAtLeastOneHeads :: Float
probAtLeastOneHeads = sum [p | ((h1, h2), p) <- unD twoFlips, h1 || h2]