remove(X, [X|L], L).
remove(X, [H|T], [H|L]):- remove(X, T, L).

insert(X, L, M):- remove(X, M, L).

perm([], []).
perm([X|XS], M):- perm(XS, R), insert(X, R, M).
