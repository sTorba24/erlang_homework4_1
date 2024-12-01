-module(task13_test).
-include_lib("eunit/include/eunit.hrl").

task13_test_() -> [
    ?_assert(task13:decode([]) =:= []),
    ?_assert(task13:decode([{2, 1}, {1, 2}, {3, 3}, {1, 4}]) =:= [1, 1, 2, 3, 3, 3, 4]),
    ?_assert(task13:decode([{4, 42}]) =:= [42, 42, 42, 42]),
    ?_assert(task13:decode([{2, "a"}, {3, "b"}, {1, "c"}]) =:= ["a", "a", "b", "b", "b", "c"]),
    ?_assert(task13:decode([{1, "single"}, {5, "repeat"}]) =:= ["single", "repeat", "repeat", "repeat", "repeat", "repeat"])
].
