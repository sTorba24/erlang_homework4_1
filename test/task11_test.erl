-module(task11_test).
-include_lib("eunit/include/eunit.hrl").

task11_test_() -> [
    ?_assert(task11:encode_modified([]) =:= []),
    ?_assert(task11:encode_modified([1, 1, 2, 3, 3, 3, 4]) =:= [{2, 1}, 2, {3, 3}, 4]),
    ?_assert(task11:encode_modified([1, 2, 3]) =:= [1, 2, 3]),
    ?_assert(task11:encode_modified(["a", "a", "b", "b", "c"]) =:= [{2, "a"}, {2, "b"}, "c"]),
    ?_assert(task11:encode_modified([42, 42, 42, 42]) =:= [{4, 42}]),
    ?_assert(task11:encode_modified([1, 2, 2, 3, 3, 3, 4, 4, 5]) =:= [1, {2, 2}, {3, 3}, {2, 4}, 5])
].
