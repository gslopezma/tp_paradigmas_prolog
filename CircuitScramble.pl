and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

and(0,0,0,0).
and(1,0,0,0).
and(0,1,0,0).
and(0,0,1,0).
and(1,0,1,0).
and(1,1,0,0).
and(0,1,1,0).
and(1,1,1,1).


or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,0).

not(0,1).
not(1,0).

xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).

switch(1,A,A,0).
switch(0,A,0,A).


c1(A, B, C, D, Resultado) :-
    and(A, B, E),
    and(C, D, F),
    and(E, F, Resultado).

c2(A, B, C, D, Resultado) :-
    or(A, B, E),
    or(C, D, F),
    and(E, F, Resultado).

c3(A, B, C, D, Resultado) :-
    and(A, B, E),
    and(C, D, F),
    or(E, F, Resultado).

c4(A, B, C, D, Resultado) :-
    and(A, B, E),
    or(C, D, F),
    or(E, F, G),
    not(G, Resultado).




c99(A, B, C, D, E, F, G, H, SW1, SW2, Resultado) :-
    and(A, B, I),
    or(I, C, J),
    and(D, E, K),
    or(F, L, M),
    and(G, H, L),
    or(I, J, N),
    and(J, K, O),
    and(K, M, P),
    xor(M, L, Q),
    switch(SW1,O,R,S),
    switch(SW2,P,T,U),
    and(N, R, V),
    not(T, W),
    or(S, W, X),
    not(X, AA),
    not(Q, Y),
    xor(U, Y, Z),
    and(V, AA, Z, Resultado).





circuit(A, B, C, D) :- 
    not(B, X),
    and(A, X, U),
    or(U, V, W),
    and(B, C, V),
    not(W, D).