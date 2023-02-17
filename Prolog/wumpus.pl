safe(I,J):-
not(wumpus(I,J)),not(pit(I,J)).

gold(I,J):-
P is I-1,
Q is I+1,
R is J-1,
S is J+1,
glitter(P,J),
glitter(Q,J),
glitter(I,R),
glitter(I,S).

wumpus(I,J):-
P is I-1,
Q is I+1,
R is J-1,
S is J+1,
stench(P,J),
stench(Q,J),
stench(I,R),
stench(I,S).

pit(I,J):-
P is I-1,
Q is I+1,
R is J-1,
S is J+1,
breeze(P,J),
breeze(Q,J),
breeze(I,R),
breeze(I,S).

stench(2,1).
stench(4,1).
stench(3,2).
stench(3,0).

breeze(1,2).
breeze(1,4).
breeze(2,3).
breeze(0,3).
breeze(3,4).
breeze(3,2).
breeze(4,3).
breeze(4,5).
breeze(5,4).

glitter(3,1).
glitter(3,3).
glitter(2,2).
glitter(4,2).

