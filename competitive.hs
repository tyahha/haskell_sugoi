
import Data.Array

main :: IO ()
main = do
  [n, _] <- map read . words <$> getLine :: IO [Int]
  ps <- map read . words <$> getLine :: IO [Int]
  let sList = scanl (+) 0 ps
      sArr = listArray (0, n) sList :: Array Int Int
  queries <- map (map read . words) . lines <$> getContents :: IO [[Int]]
  let ans = map (\[l, r] -> sArr ! r - sArr ! (l - 1)) queries
  putStr $ unlines $ map show ans