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
	io:fwrite("~p\n", [keyfinder(ruby, List)]),
    io:fwrite("\n\n"),

	ProgrammersShoppingList = [{keyboard, 1, 150}, {laptop, 1, 1000}, {caffinated_beverage, 1000, 2}],
	ProgrammersShoppingListPrices = [{Item, Quantity*Price} || {Item, Quantity, Price} <- ProgrammersShoppingList],
	io:fwrite("~p\n", [ProgrammersShoppingListPrices]),

	done.
