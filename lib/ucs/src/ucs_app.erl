%%% File    : ucs_app.erl
%%% Author  : Johan Blom <johan@localhost.localdomain>
%%% Description : Unicode handling
%%% Created : 16 Apr 2002 by Johan Blom <johan@mobilearts.se>

-module(ucs_app).

-behaviour(application).
%%--------------------------------------------------------------------
%% Include files
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% External exports
%%--------------------------------------------------------------------
-export([
	 start/2,
	 stop/1
        ]).

%%--------------------------------------------------------------------
%% Internal exports
%%--------------------------------------------------------------------
-export([
        ]).

%%--------------------------------------------------------------------
%% Macros
%%--------------------------------------------------------------------

%%--------------------------------------------------------------------
%% Records
%%--------------------------------------------------------------------

%%====================================================================
%% External functions
%%====================================================================
%%--------------------------------------------------------------------
%% Func: start/2
%% Returns: {ok, Pid}        |
%%          {ok, Pid, State} |
%%          {error, Reason}   
%%--------------------------------------------------------------------
start(Type, StartArgs) ->
    case ucs_sup:start_link(StartArgs) of
	{ok, Pid} -> 
	    {ok, Pid};
	Error ->
	    Error
    end.

%%--------------------------------------------------------------------
%% Func: stop/1
%% Returns: any 
%%--------------------------------------------------------------------
stop(State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================