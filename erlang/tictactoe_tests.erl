-module(tictactoe_tests).
-include_lib("eunit/include/eunit.hrl").

board_size_test() ->
	invalid_board = tictactoe:tictactoe([]).

blank_board_test() ->
	no_winner = tictactoe:tictactoe([empty, empty, empty,
	                                 empty, empty, empty,
	                                 empty, empty, empty]).

horizontal_winner_test() ->
	x = tictactoe:tictactoe([x, x, x,
	                         empty, empty, empty,
	                         empty, empty, empty]).

cats_game_test() ->
	cats = tictactoe:tictactoe([x, o, x,
	                            x, o, x,
	                            o, x, o]).

vertical_winner_test() ->
	o = tictactoe:tictactoe([o, empty, empty,
	                         o, empty, empty,
	                         o, empty, empty]).

diagonal_winner_test() ->
	x = tictactoe:tictactoe([x, empty, empty,
	                         empty, x, empty,
	                         empty, empty, x]).
