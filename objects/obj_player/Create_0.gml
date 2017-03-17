/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4659CCFD
/// @DnDArgument : "code" "/// Initialise variables$(13_10)$(13_10)grav = 0.9;$(13_10)hsp = 0;$(13_10)hsp_carry = 0;$(13_10)vsp_carry = 0;$(13_10)vsp = 0;$(13_10)watermovespeed =3;$(13_10)movespeed = 7;$(13_10)frict = 0.4;$(13_10)jumps = 0;$(13_10)jumpsmax = 2;$(13_10)$(13_10)jumpspeed_normal = 15;$(13_10)jumpspeed_power_up = 25;$(13_10)$(13_10)$(13_10)jumpspeed = jumpspeed_normal;$(13_10)$(13_10)if (global.checkpointR == room)$(13_10){$(13_10)	x = global.checkpointx;$(13_10)	y = global.checkpointy;$(13_10)}$(13_10)$(13_10)key_down = 0;$(13_10)$(13_10)ladder = false;$(13_10)$(13_10)$(13_10)"

{
	/// Initialise variables

grav = 0.9;
hsp = 0;
hsp_carry = 0;
vsp_carry = 0;
vsp = 0;
watermovespeed =3;
movespeed = 7;
frict = 0.4;
jumps = 0;
jumpsmax = 2;

jumpspeed_normal = 15;
jumpspeed_power_up = 25;


jumpspeed = jumpspeed_normal;

if (global.checkpointR == room)
{
	x = global.checkpointx;
	y = global.checkpointy;
}

key_down = 0;

ladder = false;



}

