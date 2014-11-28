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

start() ->
    io:fwrite("Erlang day 1\n"),
	io:fwrite("~p\n", [wordcount("hello world!\n")]),
	io:fwrite("~p\n", [wordcountr("hello world!\n")]).
