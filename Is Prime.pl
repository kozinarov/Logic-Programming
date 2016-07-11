between(A, B, A):- A =< B.
between(A, B, C):- A < B, A1 is A + 1, between(A1, B, C).

int(0).
int(X):- int(Y), X is Y + 1.

isPrime(N):- N1 is N // 2 , not((between(2, N1, X), N mod X =:= 0)).
prime(N):- int(N), isPrime(N).
