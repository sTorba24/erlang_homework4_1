-module(task2_test).
-include_lib("eunit/include/eunit.hrl").

task2_test_() -> [
    ?_assert(task2:but_last([1, 2, 3, 4]) =:= [3, 4]),
    ?_assert(task2:but_last([1, 2]) =:= [1, 2]),
    ?_assert(task2:but_last(["a", "b", "c"]) =:= ["b", "c"]),
    ?_assert(task2:but_last([42, 99]) =:= [42, 99]),
    ?_assertException(error, function_clause, task2:but_last([]))
].
