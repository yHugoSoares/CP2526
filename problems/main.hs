module Main where

import Problem1
import Problem2
import Problem4
import Problem5

-- Simple test runner
runTest :: String -> Bool -> IO ()
runTest name test = putStrLn $ name ++ ": " ++ if test then "✓ PASS" else "✗ FAIL"

main :: IO ()
main = do
  putStrLn "Running CP2526t Problems Tests\n"
  runTest "Problem 1 - Tree Height" (heightTree testTree1 == 2)
  runTest "Problem 2 - Sum List" (sumList [1,2,3,4] == 10)
  runTest "Problem 2 - Product List" (productList [1,2,3,4] == 24)
  runTest "Problem 2 - Length List" (lengthList [1,2,3,4,5] == 5)
  runTest "Problem 4 - Eval Expression" (evalExp testEnv testExpr == Just 14)
  runTest "Problem 5 - Factorial" (testFactorial == 120)
  putStrLn "\nAll tests completed!"