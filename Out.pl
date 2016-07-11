append([], L1, L2).
append([H|Q], L2, [H|R]):- append(Q, L2, R).

out(L , X, M) :- append(F, [X|B], L ), append(F , B , M).
