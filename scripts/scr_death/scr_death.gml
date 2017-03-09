/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D544546
/// @DnDArgument : "code" "if (global.checkpointR != 0)$(13_10){$(13_10)	room_goto(global.checkpointR);$(13_10)}$(13_10)else$(13_10){$(13_10)	room_restart();$(13_10)}"

{
	if (global.checkpointR != 0)
{
	room_goto(global.checkpointR);
}
else
{
	room_restart();
}
}

