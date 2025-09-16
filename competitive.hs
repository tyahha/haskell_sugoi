main :: IO ()
main = do
  [i, j] <- map read . words <$> getLine :: IO [Int]
  putStr $ if any (\a -> 100 `mod` a == 0) [i..j]
    then "Yes"
    else "No"
