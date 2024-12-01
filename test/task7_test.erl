-module(task7_test).
-include_lib("eunit/include/eunit.hrl").

task7_test_() -> [
    ?_assert(task7:flatten([]) =:= []),
    ?_assert(task7:flatten([1, 2, 3]) =:= [1, 2, 3]),
    ?_assert(task7:flatten([1, [2, 3], 4]) =:= [1, 2, 3, 4]),
    ?_assert(task7:flatten([[1, 2], [3, 4], [5]]) =:= [1, 2, 3, 4, 5]),
    ?_assert(task7:flatten([1, [2, [3, [4, 5]]]]) =:= [1, 2, 3, 4, 5]),
    ?_assert(task7:flatten([[1], [], [2, [3, 4]]]) =:= [1, 2, 3, 4])
].
