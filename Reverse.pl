reverse([], B, B).
reverse([X|XS], B, R):- reverse(XS, [X|B], R).
reverse(X, Y):- reverse(X, [], Y).
