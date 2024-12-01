-module(task14_test).
-include_lib("eunit/include/eunit.hrl").

task14_test_() -> [
    ?_assert(task14:duplicate([]) =:= []),
    ?_assert(task14:duplicate([1, 2, 3]) =:= [1, 1, 2, 2, 3, 3]),
    ?_assert(task14:duplicate(["a", "b", "c"]) =:= ["a", "a", "b", "b", "c", "c"]),
    ?_assert(task14:duplicate([42]) =:= [42, 42]),
    ?_assert(task14:duplicate(["hello"]) =:= ["hello", "hello"])
].
