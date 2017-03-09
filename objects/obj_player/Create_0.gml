/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4659CCFD
/// @DnDArgument : "code" "/// Initialise variables$(13_10)$(13_10)grav = 0.5;$(13_10)hsp = 0;$(13_10)hsp_carry = 0;$(13_10)vsp = 0;$(13_10)movespeed = 5;$(13_10)$(13_10)jumpspeed_normal = 15;$(13_10)jumpspeed_power_up = 25;$(13_10)$(13_10)jumpspeed = jumpspeed_normal;$(13_10)$(13_10)if (global.checkpointR == room)$(13_10){$(13_10)	x = global.checkpointx;$(13_10)	y = global.checkpointy;$(13_10)}$(13_10)$(13_10)key_down = 0;"

{
	/// Initialise variables

grav = 0.5;
hsp = 0;
hsp_carry = 0;
vsp = 0;
movespeed = 5;

jumpspeed_normal = 15;
jumpspeed_power_up = 25;

jumpspeed = jumpspeed_normal;

if (global.checkpointR == room)
{
	x = global.checkpointx;
	y = global.checkpointy;
}

key_down = 0;
}

