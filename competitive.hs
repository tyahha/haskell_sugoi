
import Data.Array

main :: IO ()
main = do
  n <- readLn :: IO Int
  line1 <- getLine
  let splited = words line1
      aa = map (read :: String -> Int) splited
      sums = scanl (\(wins, looses) a -> if a == 1 then (wins + 1, looses) else (wins, looses + 1)) (0, 0) aa
      arr = listArray (0, n) sums :: Array Int (Int, Int)
  _ <- readLn :: IO Int
  queries <- map (map (read :: String -> Int) . words) . lines <$> getContents :: IO [[Int]]
  mapM_ (\q -> case q of
          [l, r] -> putStrLn $ if wins > looses then "win" else if wins < looses then "lose" else "draw"
            where
              (w1, l1) = arr ! (l - 1)
              (w2, l2) = arr ! r
              wins = w2 - w1 :: Int
              looses = l2 - l1 :: Int
          _ -> return ()
        ) queries