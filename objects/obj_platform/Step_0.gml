/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38D304A4
/// @DnDArgument : "code" "if (instance_exists(obj_player))$(13_10){$(13_10)	// check to see if the player is above the platform$(13_10)	if round(obj_player.y + (obj_player.sprite_height/2) > y+1) || (obj_player.key_down) mask_index = -1;$(13_10)	else mask_index = spr_platform;$(13_10)}"

{
	if (instance_exists(obj_player))
{
	// check to see if the player is above the platform
	if round(obj_player.y + (obj_player.sprite_height/2) > y+1) || (obj_player.key_down) mask_index = -1;
	else mask_index = spr_platform;
}
}

