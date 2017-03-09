/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C677D25
/// @DnDArgument : "code" "with (obj_player)$(13_10){$(13_10)	jumpspeed = jumpspeed_power_up;$(13_10)	sprite_index = spr_player_b;$(13_10)	alarm[0] = 600;$(13_10)	$(13_10)}$(13_10)$(13_10)instance_destroy();$(13_10)"

{
	with (obj_player)
{
	jumpspeed = jumpspeed_power_up;
	sprite_index = spr_player_b;
	alarm[0] = 600;
	
}

instance_destroy();

}

