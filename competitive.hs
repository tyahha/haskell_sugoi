main :: IO ()
main = do
  [_, j] <- map read . words <$> getLine :: IO [Int]
  as <- map read . words <$> getLine :: IO [Int]
  putStr $ if j `elem` as then "Yes" else "No"
