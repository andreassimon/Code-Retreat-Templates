{-# OPTIONS_GHC -F -pgmF htfpp #-}

-- https://hackage.haskell.org/package/HTF
-- https://hackage.haskell.org/package/HTF/docs/Test-Framework-Tutorial.html
import Test.Framework
import Test.Framework.TestManager
import System.Environment

main =
    do args <- getArgs
       runTestWithArgs args htf_thisModulesTests

test_primefactors =
                 do assertEqual [2]       (primefactors 2)
                    assertEqual [3]       (primefactors 3)
                    assertEqual [2, 2]    (primefactors 4)
                    assertEqual [2, 3]    (primefactors 6)
                    assertEqual [2, 2, 2] (primefactors 8)
                    assertEqual [3, 3]    (primefactors 9)
                    assertEqual [2, 5]    (primefactors 10)
                    assertEqual [13, 17]  (primefactors $ 13 * 17)

prop_multiply :: Int -> Bool
prop_multiply n
            | n < 2      =  True
            | otherwise  =  n == (foldl (*) 1 (primefactors n))

primefactors = primefactors' 2

primefactors' :: Int -> Int -> [Int]
primefactors' p n
           | n == p          =  [p]
           | p * p > n       =  [n]
           | n `mod` p == 0  =  p : primefactors' p (n `quot` p)
           | otherwise       =  primefactors' (p+1) n
