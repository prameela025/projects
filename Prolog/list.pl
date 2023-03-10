%searching an element in the list search(element,list).
search(X,[X|_]).
search(X,[_|T]):-
    search(X,T).

%add an element in the list
add([],L2,L2).
add([H|T],L2,[H|L3]):-
    add(T,L2,L3).

%delete an element from the list delete(element,list,new list name)
del(X,[X],[]).
del(X,[X|L1],[L1]).
del(X,[Y|L],[Y|L1]):-
    del(X,L,L1).

%count the number of elements in the list size(list,c).
size([],0).
size([_|T],N):-
    size(T,N1),N is N1+1.
