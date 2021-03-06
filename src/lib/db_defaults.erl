%%% provides methods for initial database data
%%% if you need some pre-defined data in your model's table
%%% you should define a parameterless method
%%% with the name similar to the model's name
%%% and return constructed entity list

-module(db_defaults).
-compile(export_all).

tag() ->
    TagNames = ["общение",
		"события",
		"авто",
		"бизнес",
		"любовь",
		"личное"],
    lists:map(fun (Text) -> tag:new(id, utf8_decode(Text)) end, 
	      TagNames).

utf8_decode(Text) ->
    binary:bin_to_list(
      unicode:characters_to_binary(
	Text)).
