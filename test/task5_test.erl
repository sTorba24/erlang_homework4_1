-module(task5_test).
-include_lib("eunit/include/eunit.hrl").

task5_test_() -> [
    ?_assert(task5:reverse([]) =:= []),
    ?_assert(task5:reverse([42]) =:= [42]),
    ?_assert(task5:reverse([1, 2, 3, 4]) =:= [4, 3, 2, 1]),
    ?_assert(task5:reverse("hello") =:= "olleh"),
    ?_assert(task5:reverse([[1, 2], [3, 4], [5]]) =:= [[5], [3, 4], [1, 2]])
].
