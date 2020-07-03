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
or(1,1,1).

not(0,1).
not(1,0).

xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).

switch(1,A,A,0).
switch(0,A,0,A).

estaEncendido(1).

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

c5(A, B, C, D, Resultado) :-
    or(A, B, E),
    not(C, CC),
    and(CC, D, F),
    not(E, EE),
    not(F, FF),
    and(EE, FF, Resultado).

c6(A, B, C, D, Resultado) :-
    and(A, B, E),
    or(C, D, F),
    not(E, EE),
    not(F, FF),
    or(EE,FF,R),
    not(R,Resultado).

c7(A, B, C, D, X, Z, Resultado) :-
    and(A, B, E),
    or(C, D, F),
    not(Z, G),
    and(X, G, H),
    not(F, I),
    and(I, H, J),
    and(E, J, Resultado).

c8(A, B, C, D, X, Z, Resultado) :-
    or(A, B, E),
    not(E, G),
    and(C, D, H),    
    not(X, I),
    or(I, Z, F),
    not(F, J),
    or(H, J, K),
    or(G, K, Resultado).


c9(A, B, C, D, X, Z, Resultado) :-
    or(A, B, E),
    or(C, D, F),
    not(X, G),
    and(G, Z, H),
    not(F, I),
    and(E, I, J),
    or(J, H, R),
    not(R, Resultado).


c10(A, B, C, D, X, Z, Resultado) :-
    and(A, B, E),
    and(C, D, F),
    or(X, Z, G),
    and(E, F, H),
    or(F, G, I),
    and(H, I, Resultado).

c11(A, B, C, D, X, Z, Resultado) :-
    or(A, B, E),
    or(C, D, F),
    and(X, Z, G),
    not(E, H),
    not(F, I),
    or(H, F, J),
    and(I, G, K),
    and(J, K, Resultado).



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