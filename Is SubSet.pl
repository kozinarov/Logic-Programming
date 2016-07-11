member([X|_], X).
member([_|Q], X):- member(Q, X).

isSubset(L , S):- not((member(S , X), not(member(L , X)))).
