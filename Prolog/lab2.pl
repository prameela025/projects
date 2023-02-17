inorder(leaf(X),[X]).
inorder(tree(N,L,R),T) :- inorder(L,L1),
                          inorder(R,R1),
                          append(L1,[N|R1],T).

eval(A,B,C,D,E,F,G):-
    S is ((A//B)-G)+((C**D)*(E mod F)),
    writeln(S).

input(A,B,C,D,E,F,G):-
    inorder(tree(+,tree(-,tree(/,leaf(A),leaf(B)),leaf(G)),tree(*,tree(^,leaf(C),leaf(D)),tree(mod,leaf(E),leaf(F)))),T),
    writeln(T),
    eval(A,B,C,D,E,F,G).
