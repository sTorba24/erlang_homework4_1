-module(task6_test).
-include_lib("eunit/include/eunit.hrl").

task6_test_() -> [
    ?_assert(task6:is_palindrome([]) =:= true),
    ?_assert(task6:is_palindrome([42]) =:= true),
    ?_assert(task6:is_palindrome([1, 2, 3, 2, 1]) =:= true),
    ?_assert(task6:is_palindrome([1, 2, 3]) =:= false),
    ?_assert(task6:is_palindrome("madam") =:= true),
    ?_assert(task6:is_palindrome("hello") =:= false)
].
