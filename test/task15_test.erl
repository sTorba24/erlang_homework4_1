-module(task15_test).
-include_lib("eunit/include/eunit.hrl").

task15_test_() -> [
    ?_assert(task15:replicate([], 3) =:= []),
    ?_assert(task15:replicate([1, 2, 3], 2) =:= [1, 1, 2, 2, 3, 3]),
    ?_assert(task15:replicate([42], 4) =:= [42, 42, 42, 42]),
    ?_assert(task15:replicate(["a", "b"], 3) =:= ["a", "a", "a", "b", "b", "b"]),
    ?_assert(task15:replicate([1, 2], 0) =:= [])
].
