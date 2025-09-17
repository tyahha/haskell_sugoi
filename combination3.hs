combinations3 :: [a] -> [(a, a, a)]
combinations3 xs =
  [(x, y, z) |
     (x, i) <- zip xs [0 .. ],
     (y, j) <- zip xs [0 .. ],
     i < j,
     (z, k) <- zip xs [0 .. ],
     j < k]

main :: IO ()
main = do
  _ <- map read . words <$> getLine :: IO [Int]
  ps <- map read . words <$> getLine :: IO [Int]
  let found = any (\(x,y,z) -> x + y + z == 1000 ) (combinations3 ps)
  putStr $ if found
    then "Yes"
    else "No"
