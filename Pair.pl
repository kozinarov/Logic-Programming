betweeen(A, B, A):- A =< B.
betweeen(A, B, C):- A < B, A1 is A + 1, betweeen(A1, B, C).

int(0).
int(X):- int(Y), X is Y + 1.

pair(X, Y):- int(S), between(0, S, X), Y is S - X.
