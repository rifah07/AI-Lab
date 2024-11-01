% first.pl
parent(john, mary).
parent(mary, susan).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
