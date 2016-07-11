member([X|_], X).
member([_|Q], X):- member(Q, X).

subset(L, M):- not((member(X, L), not(member(X, M))))
