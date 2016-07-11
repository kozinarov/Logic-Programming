sum([], 0).
sum([X|XS], R):-sum(XS,Q), R is X + Q.
