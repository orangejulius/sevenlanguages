-module(day1).
-export([wordcount/1]).
-export([wordcountr/1]).
-export([start/0]).

% nonrecursive version
wordcount(Input) ->
	length(string:tokens(Input, " ")).

wordcountr(Input) ->
	wordcountr_internal(string:tokens(Input, " ")).

wordcountr_internal([]) -> 1;
wordcountr_internal([_|T]) ->
	wordcountr_internal(T) + 1.

counter(0) ->
	done;

counter(Upto) ->
	counter(Upto - 1),
	io:fwrite("~p\n", [Upto]).

start() ->
    io:fwrite("Erlang day 1\n"),
	io:fwrite("~p\n", [wordcount("hello world!\n")]),
	io:fwrite("~p\n", [wordcountr("hello world!\n")]),
	io:fwrite("\n\n"),
	counter(10).
