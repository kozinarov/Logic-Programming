append([], L1, L2).
append([H|Q], L2, [H|R]):- append(Q, L2, R).
