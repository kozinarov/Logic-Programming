member([X|_], X).
member([_|Q], X):- member(Q, X).

append([], L1, L2).
append([H|Q], L2, [H|R]):- append(Q, L2, R).

take(L, A1, A2):- append(_, [A1|Q], L), member(Q, A2).
