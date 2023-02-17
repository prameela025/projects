relations(What, Name1, Name2):-
  relation_facts(Facts, Name1, _),
  relations1(Facts, [], Name2, What1),
  atomic_list_concat(What1, What).

relations1(Facts, Forbidden, Name2, What):-
  member(Relation, Facts),
  call(Relation),
  relations2(Relation, Forbidden, Name2, What).

relations2(Relation, Forbidden, Right, [Left, ' ', is, ' ', Right, '''s ', Name]):-
  Relation =.. [Name, Left, Right],
  Forbidden \= Right.

relations2(Relation, Forbidden, Name2, [Left, ' ', is, ' '| What]):-
  Relation =.. [Name, Left, Right],
  relation_facts(Facts, Right, _),
  Forbidden\=Right,
  relations1(Facts, Left, Name2, [_,_,_,_, NRight|What1]),
  append([NRight|What1], ['''s ', Name], What).

relation_facts([father(X,Y), mother(X,Y), sister(X,Y), brother(X,Y), grandmother(X,Y), grandfather(X,Y), aunt(X,Y), uncle(X,Y)], X, Y).

mother(A,B):-
    parent(A,B),
    female(A).

father(A,B):-
    parent(A,B),
    male(A).

sister(A,B):-
    parent(C,A),
    parent(C,B),
    A\=B,
    female(A).

brother(A,B):-
    parent(C,A),
    parent(C,B),
    A\=B,
    male(A).

grandfather(A,B):-
    father(A,C),
    parent(C,B).

grandmother(A,B):-
    mother(A,C),
    parent(C,B).

uncle(A,B):-
    parent(C,B),
    brother(A,C).

aunt(A,B):-
    parent(C,B),
    sister(A,C).

parent(latha,honey).
parent(siva,honey).
parent(latha,pranav).
parent(siva,pranav).
parent(sita,latha).
parent(rao,latha).
parent(devi,siva).
parent(ratan,siva).
parent(sita,suresh).
parent(rao,suresh).
parent(devi,sara).
parent(ratan,sara).
parent(devi,ram).
parent(ratan,ram).

male(rao).
male(siva).
male(ram).
male(ratan).
male(praneeth).
male(suresh).

female(devi).
female(sara).
female(prameela).
female(latha).
female(sita).
