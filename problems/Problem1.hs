module Problem1 where

import BTree

-- Calculate the height of a binary tree
heightTree :: BTree a -> Int
heightTree Empty = 0
heightTree (Node (_, (left, right))) = 1 + max (heightTree left) (heightTree right)

-- Test cases
testTree1 :: BTree Int
testTree1 = Node (1, (Node (2, (Empty, Empty)), Node (3, (Empty, Empty))))

-- Expected: heightTree testTree1 == 2