between(A, B, A):- A =< B.
between(A, B, C):- A < B, A1 is A + 1, between(A1, B, C).
