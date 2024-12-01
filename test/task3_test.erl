-module(task3_test).
-include_lib("eunit/include/eunit.hrl").

task3_test_() -> [
    
    ?_assert(task3:element_at([1, 2, 3, 4], 1) =:= 1),
    ?_assert(task3:element_at([1, 2, 3, 4], 2) =:= 2),
    ?_assert(task3:element_at([1, 2, 3, 4], 4) =:= 4),
    
    ?_assert(task3:element_at(["a", "b", "c", "d"], 3) =:= "c"),
    
    ?_assert(task3:element_at([42], 1) =:= 42),
    
    ?_assertException(error, function_clause, task3:element_at([], 1)), 
    ?_assertException(error, function_clause, task3:element_at([1, 2, 3], 0)), 
    ?_assertException(error, function_clause, task3:element_at([1, 2, 3], 5))
].
