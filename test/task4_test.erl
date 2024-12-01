-module(task4_test).
-include_lib("eunit/include/eunit.hrl").

task4_test_() -> [
    ?_assert(task4:len([]) =:= 0),

    ?_assert(task4:len([42]) =:= 1),

    ?_assert(task4:len([1, 2, 3, 4]) =:= 4),

    ?_assert(task4:len("hello") =:= 5),

    ?_assert(task4:len([[1, 2], [3, 4], [5]]) =:= 3)
].