append([], L1, L2).
append([H|Q], L2, [H|R]):- append(Q, L2, R).

sublist(L, M):- append(_, K, L), append(M, _, K).

remove(X, [X|L], L).
remove(X, [H|T], [H|L]):- remove(X, T, L).

insert(X, L, M):- remove(X, M, L).

perm([], []).
perm([X|XS], M):- perm(XS, R), insert(X, R, M).

subsetGen(L, M):- perm(L, X), sublist(X, M).
