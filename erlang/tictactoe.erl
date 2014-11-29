-module(tictactoe).
-export([tictactoe/1]).

tictactoe(Board) ->
	if
		length(Board) =/= 9 -> invalid_board;
		true -> get_winner(Board)
	end.

get_triple_winner(Triple) ->
	Xs = lists:filter(fun (X) -> X == x end, Triple),
	Os = lists:filter(fun (X) -> X == o end, Triple),

	if
		length(Xs) == 3 -> x;
		length(Os) == 3 -> o;
		true -> no_winner
	end.

get_triples(Board) ->
	get_horizontal_triples(Board) ++ get_vertical_triples(Board) ++ get_diagonal_triple(Board) ++ get_antidiagonal_triple(Board).

get_horizontal_triples(Board) ->
	[lists:sublist(Board, X, 3) || X <- [1, 4, 7]].


get_vertical_triple(Board, ColNum) ->
	[lists:nth( 1 + ColNum + Row*3, Board)  || Row <- [0, 1, 2]].

get_vertical_triples(Board) ->
	[get_vertical_triple(Board, N) || N <- [0, 1, 2]].

get_diagonal_triple(Board) ->
	[[lists:nth(N, Board) || N <- [1, 5, 9]]].

get_antidiagonal_triple(Board) ->
	[[lists:nth(N, Board) || N <- [3, 5, 7]]].

get_winner(Board) ->
	EmptyParts = lists:filter(fun (X) -> X == empty end, Board),
	Wins = [get_triple_winner(Triple) || Triple <- get_triples(Board)],
	XWins = lists:filter(fun (W) -> W == x end, Wins),
	OWins = lists:filter(fun (W) -> W == o end, Wins),
	if
		length(XWins) > 0 -> x;
		length(OWins) > 0 -> o;
		length(EmptyParts) == 0 -> cats;
		true -> no_winner
	end.
