module Problem4 where

import Exp
import Cp
import qualified Data.Map as M

type Env = M.Map String Int

-- Define operators for expressions
data Op = Add | Mul | Sub deriving (Show, Eq)

-- Evaluate expression with environment
evalExp :: Env -> Exp String Op -> Maybe Int
evalExp env (Var x) = M.lookup x env
evalExp env (Term Add [e1, e2]) = do
  v1 <- evalExp env e1
  v2 <- evalExp env e2
  return (v1 + v2)
evalExp env (Term Mul [e1, e2]) = do
  v1 <- evalExp env e1
  v2 <- evalExp env e2
  return (v1 * v2)
evalExp env (Term Sub [e1, e2]) = do
  v1 <- evalExp env e1
  v2 <- evalExp env e2
  return (v1 - v2)
evalExp _ _ = Nothing

-- Test
testEnv :: Env
testEnv = M.fromList [("x", 5), ("y", 3)]

testExpr :: Exp String Op
testExpr = Term Add [Var "x", Term Mul [Var "y", Var "y"]]
-- Expected: evalExp testEnv testExpr == Just 14 (5 + 3*3)