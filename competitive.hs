main :: IO ()
main = do
  n <- readLn :: IO Int
  print (n * n)
