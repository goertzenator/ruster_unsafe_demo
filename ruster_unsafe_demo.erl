-module(ruster_unsafe_demo).

-export([static_atom/0,native_add/2, tuple_add/1]).
-on_load(init/0).

init() ->
	Filename = hd(filelib:wildcard("target/{debug,release}/*ruster_unsafe_demo*")),
	Rootname = filename:rootname(Filename),
    ok = erlang:load_nif(Rootname, 0).

static_atom() ->
    exit(nif_library_not_loaded).

native_add(_X, _Y) ->
    exit(nif_library_not_loaded).

tuple_add(_X) ->
    exit(nif_library_not_loaded).
