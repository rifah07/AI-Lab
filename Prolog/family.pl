% Facts
parent(john, mary).
parent(john, hank).
parent(johnny, frank).
parent(johnny, susan).
parent(mary, john-jr).
parent(mary, cindy).
parent(hank, johnny-b).
parent(emily, maybelle).
parent(maybelle, frank).

% Rules
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
son(X, Y) :- parent(Y, X), male(X).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
uncle(X, Y) :- parent(Z, Y), sibling(X, Z), male(X).
aunt(X, Y) :- parent(Z, Y), sibling(X, Z), female(X).
grandchild(X, Y) :- parent(Y, Z), parent(Z, X).

% Gender Facts
male(john).
male(hank).
male(johnny).
male(frank).
male(john-jr).
male(johnny-b).

female(mary).
female(susan).
female(cindy).
female(emily).
female(maybelle).
