-module(task10_test).
-include_lib("eunit/include/eunit.hrl").

task10_test_() -> [
    ?_assert(task10:encode([]) =:= []),
    ?_assert(task10:encode([1, 1, 2, 3, 3, 3, 4]) =:= [{2, 1}, {1, 2}, {3, 3}, {1, 4}]),
    ?_assert(task10:encode([1, 2, 3]) =:= [{1, 1}, {1, 2}, {1, 3}]),
    ?_assert(task10:encode(["a", "a", "b", "b", "c"]) =:= [{2, "a"}, {2, "b"}, {1, "c"}]),
    ?_assert(task10:encode([42, 42, 42, 42]) =:= [{4, 42}]),
    ?_assert(task10:encode([1, 2, 2, 3, 3, 3, 4, 4, 5]) =:= [{1, 1}, {2, 2}, {3, 3}, {2, 4}, {1, 5}])
].
