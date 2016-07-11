member([X|_], X).
member([_|Q], X):- member(Q, X).
