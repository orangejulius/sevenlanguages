-module(day2).
-export([start/0]).

keyfinder(Key, List) ->
	Tuple = lists:keyfind(Key, 1, List),
	case Tuple of
		{Key, String} -> String;
		false -> false
	end.

start() ->
    io:fwrite("Erlang day 2\n"),
	List = [{ruby, "OO language"}, {erlang, "functional language"}],
	io:fwrite("~p\n", [keyfinder(ruby, List)]).

