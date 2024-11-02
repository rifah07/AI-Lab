and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

not(0,1).
not(1,0).

diff(0,0,1).
diff(1,1,0).

xnor(0,0,0).
xnor(0,1,1).
xnor(1,0,1).
xnor(1,1,0).



nand(A,B,S):-
    and(A,B,A0),
    not(A0,S).

nor(A,B,S1):-
    or(A,B,A1),
    not(A1,S1).

xor(A,B,S2):-
    not(A,A2),
    and(A2,B,A3),
    not(B,B1),
    and(A,B1,A4),
    or(A3,A4,S2).

half_adder(A,B,S3,C1):-
    xor(A,B,S3),
    and(A,B,C1).

full_adder(A,B,C,S4,C2):-
    xor(A,B,A5),
    xor(A5,C,S4),
    and(A,B,A6),
    and(A5,C,A7),
    or(A6,A7,C2).

mux_two_one(A,B,Sel,Out):-
    not(Sel,SelB),
    and(A,SelB,A8),
    and(B,Sel,A9),
    or(A8,A9,Out).


circit(A,B,C,Q,R):-
    not(A,A10),
    and(A,B,A11),
    nand(A10,A11,A12),
    xnor(A12,C,A13),
    diff(A13,Q,R).
