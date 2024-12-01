-module(task12_test).
-include_lib("eunit/include/eunit.hrl").

task12_test_() -> [
    ?_assert(task12:decode_modified([]) =:= []),
    ?_assert(task12:decode_modified([{2, 1}, {1, 2}, {3, 3}, {1, 4}]) =:= [1, 1, 2, 3, 3, 3, 4]),
    ?_assert(task12:decode_modified([1, {2, 2}, {3, 3}, {1, 4}]) =:= [1, 2, 2, 3, 3, 3, 4]),
    ?_assert(task12:decode_modified([{4, 42}]) =:= [42, 42, 42, 42]),
    ?_assert(task12:decode_modified([{2, "a"}, {2, "b"}, "c"]) =:= ["a", "a", "b", "b", "c"])
].
