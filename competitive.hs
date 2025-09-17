combinations3 :: Int -> String -> String
combinations3 n s =
  if n == 0
    then s
    else combinations3 (n `div` 2) ((if even n then '0' else '1') : s )

main :: IO ()
main = do
  n <- readLn :: IO Int
  let ss = combinations3 n ""
  let rs = "0000000000" ++ ss
  putStr $ drop (length rs - 10) rs
