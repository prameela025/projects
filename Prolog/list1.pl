% Read N numbers from keyboard and store them in a list
read_numbers(N, List) :-
  read_numbers(N, [], List).

read_numbers(0, Acc, Acc).
read_numbers(N, Acc, List) :-
  read(X),
  N1 is N - 1,
  read_numbers(N1, [X|Acc], List).

% Delete the largest number from the list
delete_largest([], []).
delete_largest([X], [X]).
delete_largest(List, Remaining) :-
  max_list(List, Max),
  delete(List, Max, Remaining).

% Repeatedly delete the largest number until the list is empty
delete_largest_repeatedly([]) :-
  write('The list is empty.').
delete_largest_repeatedly(List) :-
  delete_largest(List, Remaining),
  write('The remaining items are: '),
  write(Remaining),
  nl,
  delete_largest_repeatedly(Remaining).

% Main program
main :-
  write('Enter the number of items in the list: '),
  read(N),
  read_numbers(N, List),
  delete_largest_repeatedly(List).
% Read N numbers from the keyboard and store them in a list
read_numbers(N, List) :-
    read_numbers(N, [], List).

read_numbers(0, Acc, Acc).
read_numbers(N, Acc, List) :-
    N > 0,
    read(X),
    N1 is N - 1,
    read_numbers(N1, [X|Acc], List).

% Delete the largest number from the list
delete_largest([], []).
delete_largest([X|Xs], List) :-
    delete_largest(Xs, X, List).

delete_largest([], X, [X]).
delete_largest([Y|Ys], X, [X|List]) :-
    X >= Y,
    delete_largest(Ys, Y, List).
delete_largest([Y|Ys], X, [Y|List]) :-
    X < Y,
    delete_largest(Ys, X, List).

% Main predicate
main :-
    write('Enter the number of elements: '),
    read(N),
    read_numbers(N, List),
    delete_largest(List, NewList),
    write('The remaining items are: '),
    write(NewList),
    nl,
    main.
