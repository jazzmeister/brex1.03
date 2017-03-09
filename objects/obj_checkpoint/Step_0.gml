/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F398857
/// @DnDArgument : "code" "image_angle += 1;$(13_10)$(13_10)if (place_meeting(x, y, obj_player))$(13_10){$(13_10)	global.checkpoint = id;$(13_10)	global.checkpointx = x;$(13_10)	global.checkpointy = y;$(13_10)	global.checkpointR = room;$(13_10)}$(13_10)$(13_10)if (global.checkpointR == room)$(13_10){$(13_10)	if (global.checkpoint == id) image_index = 1; $(13_10)	else image_index = 0;$(13_10)}$(13_10)"

{
	image_angle += 1;

if (place_meeting(x, y, obj_player))
{
	global.checkpoint = id;
	global.checkpointx = x;
	global.checkpointy = y;
	global.checkpointR = room;
}

if (global.checkpointR == room)
{
	if (global.checkpoint == id) image_index = 1; 
	else image_index = 0;
}

}

