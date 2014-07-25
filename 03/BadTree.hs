- can only use a once
- badNodesAreSame (Node a _ _) (Node a _ _) | a == b = Just a

nodesAreSame (Node a _ _) (Node b _ _) | a == b = Just a
nodesAreSame _ _ = Nothing


