The efficient solution uses `foldl'` to accumulate the list in a single pass, resulting in O(n) time complexity:

```haskell
import Data.List (foldl')

buildList :: Int -> [Int]
buildList n = foldl' (\acc x -> acc ++ [x]) [] [1..n]

--Even better, using cons operator (:)
buildListBetter :: Int -> [Int]
buildListBetter n = foldl' (flip (:)) [] [1..n]
```
This avoids the repeated copying of the list that occurs with the `++` operator, making it significantly faster for larger lists.