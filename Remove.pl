remove(X, [X|L], L).
remove(X, [H|T], [H|L]):- remove(X, T, L).

