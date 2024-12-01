%%%-------------------------------------------------------------------
%% @doc erlang_homework4_1 public API
%% @end
%%%-------------------------------------------------------------------

-module(erlang_homework4_1_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    erlang_homework4_1_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
