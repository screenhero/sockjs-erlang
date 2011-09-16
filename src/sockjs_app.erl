-module(sockjs_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _StartArgs) ->
    sockjs_transport:init(),
    sockjs_session_sup:start_link().

stop(_State) ->
    ok.