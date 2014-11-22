my_reverse([], []).

my_reverse( List, ReversedList) :-
	List = [Head|Tail],
	my_reverse(Tail, ReversedTail),
	append(ReversedTail, [Head], ReversedList).

my_static_reverse([], []).
my_static_reverse([A], [A]).
my_static_reverse([A, B], [B, A]).
my_static_reverse([A, B, C], [C, B, A]).

my_min(X, Y, Smallest) :-
	X < Y,
	Smallest = X.

my_min(X, Y, Smallest) :-
	Y < X,
	Smallest = Y.

my_list_min([A], A).
my_list_min([H|T], ListMin) :-
	my_list_min(T, TailMin),
	my_min(H, TailMin, ListMin).

sort_list([], []).
sort_list([A], [A]).

sort_list([H|T], SortedList) :-
	T = [TH|_],
	H < TH,
	sort_list(T, SortedTail),
	append([H], SortedTail, SortedList).

sort_list([H|T], SortedList) :-
	T = [TH| _],
	H > TH,
	sort_list(T, SortedTail),
	append(SortedTail, [H], SortedList).

main :-
	my_reverse([], A),
	write(A), nl,
	my_reverse([1], B),
	write(B), nl,
	my_reverse([1, 2], C),
	write(C), nl,
	my_reverse([1, 2, 3], D),
	write(D), nl,
	my_static_reverse([1, 2, 3], E),
	write(E), nl,
	% this would fail
	% my_static_reverse([1, 2, 3, 4, 5], F),
	
	my_reverse([1, 2, 3, 4, 5, 6], G),
	write(G), nl,

	my_min(3, 2, MinA),
	write(MinA), nl,
	my_min(5, 7, MinB),
	write(MinB), nl,

	my_list_min([1], ListMinA),
	write(ListMinA), nl,

	my_list_min([2, 3], ListMinB),
	write(ListMinB), nl,

	my_list_min([2, 3, 4], ListMinC),
	write(ListMinC), nl,

	my_list_min([-3, -5, 10, 0, 40], ListMinD),
	write(ListMinD), nl,

	sort_list([1, 2], SortedListA),
	write(SortedListA), nl,

	sort_list([5, 2], SortedListB),
	write(SortedListB), nl,

	sort_list([3, 2, 1], SortedListC),
	write(SortedListC), nl,

	halt.
