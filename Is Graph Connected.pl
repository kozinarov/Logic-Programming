member([X|_], X).
member([_|Q], X):- member(Q, X).

append([], L1, L2).
append([H|Q], L2, [H|R]):- append(Q, L2, R).

remove(X, [X|L], L).
remove(X, [H|T], [H|L]):- remove(X, T, L).

insert(X, L, M):- remove(X, M, L).

perm([], []).
perm([X|XS], M):- perm(XS, R), insert(X, R, M).

cons(L, X, Y):- append(_, [X, Y|_], L).

isSorted(L):- not((cons(L, X, Y), X > Y)).
ssort(L , S):- perm(L , S), isSorted(S).

firstAndLast(L, X, Y) :- append([X|_], [Y], L).

last(L, X):- append(_, [X], L).

subset(L, M):- not((member(X, L), not(member(X, M)))).

path1([V, E], X, Y):- subset(V, P), firstAndLast(P, X, Y) , not( (cons(P, X, Y), not(member(E, [X, Y])))).

arc([V, E], X, Y) :- member([X, Y], E).
arc([V, E], X, Y) :- member([Y, X], E).

path(G, X, Y, P) :- path(G, X, Y, [], P).
path(G, X, X, V, [X|V]).
path(G, X, Y, V, P) :- arc(G, X, Z), not(member(Z, V)), path(G, Z, Y, [X|V], P).

connected([V, E]) :- not((member(X, V), member(Y, V), not(path([V,E], X, Y, P)))).
