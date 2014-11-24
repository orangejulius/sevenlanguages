% adapted from http://kti.ms.mff.cuni.cz/~bartak/prolog/sorting.html

%%%%%%
% insertion sort

% simply equates to  i_sort with an empty accumulator
insert_sort(List,Sorted) :-
	i_sort(List,[],Sorted).

% recursive insertion sort of empty list simply forwards the accumulator unmodified
i_sort([],Acc,Acc).

% recursive insertion of non empty list inserts the head into the correct spot of the accumulator, then insertion sorts
i_sort([H|T],Acc,Sorted) :-
	insert(H,Acc,NAcc),
	i_sort(T,NAcc,Sorted).


% base case for inserting into accumulator:
% inserting a single element into an empty accumulator just makes
% a list with that one element
insert(X,[],[X]).

% easy case for inserting into non-empty accumulator:
% given Y is the current head of the accumulator,
% and X is the item to be added
% if X <= Y, the accumulator is a list
% with X,Y as the head (first two elements)
% and the same tail
insert(X,[Y|T],[X,Y|T]) :-
	X=<Y.

% harder case for inserting into non-empty accumulator:
% given Y is the current head of the accumulator,
% and X is the item to be added
% if X > Y, the head is still Y
% and the tail is the result of recursively inserting X into the tail
insert(X,[Y|T],[Y|NT]) :-
	X > Y,
	insert(X,T,NT).

main :-
	insert_sort([2, 1], ListA),
	write(ListA), nl,
	insert_sort([6, 8, 2, -1, 4], ListB),
	write(ListB), nl,
	halt.
