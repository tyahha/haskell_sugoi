main :: IO ()
main = do
  [_, q] <- map read . words <$> getLine :: IO [Int]
  ps <- map read . words <$> getLine :: IO [Int]
  let s = scanl (+) 0 ps
  queries <- map (map read . words) . lines <$> getContents :: IO [[Int]]
  let ans = map (\[l, r] -> s !! r - s !! (l - 1)) queries
  putStr $ unlines $ map show ans