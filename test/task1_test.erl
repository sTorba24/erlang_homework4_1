-module(task1_test).
-include_lib("eunit/include/eunit.hrl").

task1_test_() -> [
    ?_assert(task1:last([1, 2, 3]) =:= 3),
    ?_assert(task1:last([10]) =:= 10),
    ?_assert(task1:last([1, 2, 3, 42]) =:= 42),
    ?_assert(task1:last(["a", "b", "z"]) =:= "z"),
    ?_assertException(error, function_clause, task1:last([]))
].
