append([], L1, L2).
append([H|Q], L2, [H|R]):- append(Q, L2, R).

cons(L, X, Y):- append(_, [X, Y|_], L).

out(L , X, M) :- append(F, [X|B], L ), append(F , B , M).

permutate([], []).
permutate(L, [X|R]):- out(L, X, M), permutate(M, T).

isSorted(L):- not((cons(L, X, Y), X > Y)).
ssort(L , S):- permutate(L , S), isSorted(S).
