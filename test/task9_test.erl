-module(task9_test).
-include_lib("eunit/include/eunit.hrl").

task9_test_() -> [
    ?_assert(task9:pack([]) =:= []),
    ?_assert(task9:pack([1, 1, 2, 3, 3, 3, 4]) =:= [[1, 1], [2], [3, 3, 3], [4]]),
    ?_assert(task9:pack([1, 2, 3]) =:= [[1], [2], [3]]),
    ?_assert(task9:pack(["a", "a", "b", "c", "c"]) =:= [["a", "a"], ["b"], ["c", "c"]]),
    ?_assert(task9:pack([42, 42, 42, 42]) =:= [[42, 42, 42, 42]]),
    ?_assert(task9:pack([1, 2, 2, 3, 3, 3, 4, 4, 5]) =:= [[1], [2, 2], [3, 3, 3], [4, 4], [5]])
].
