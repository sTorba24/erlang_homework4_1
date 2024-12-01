-module(task8_test).
-include_lib("eunit/include/eunit.hrl").

task8_test_() -> [
    ?_assert(task8:compress([]) =:= []),
    ?_assert(task8:compress([1, 1, 2, 3, 3, 3, 4]) =:= [1, 2, 3, 4]),
    ?_assert(task8:compress([1, 2, 3]) =:= [1, 2, 3]),
    ?_assert(task8:compress([42, 42, 42, 42]) =:= [42]),
    ?_assert(task8:compress(["a", "a", "b", "b", "c", "c", "c"]) =:= ["a", "b", "c"]),
    ?_assert(task8:compress([1, 2, 2, 3, 4, 4, 4, 5]) =:= [1, 2, 3, 4, 5])
].
