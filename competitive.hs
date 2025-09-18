main :: IO ()
main = do
  ss <- getLine
  let rs = reverse ss
  let n = foldl (\acc (c, e) -> acc + if c == '1' then e else 0) 0 (zip rs (iterate (*2) 1))
  print n
