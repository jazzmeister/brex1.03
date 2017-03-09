/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38D304A4
/// @DnDArgument : "code" "// First ensure collision mask is on$(13_10)mask_index = spr_platformH$(13_10)$(13_10)hsp = dir * movespeed;$(13_10)$(13_10)// Horizontal collision$(13_10)if (place_meeting(x+hsp, y,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)	$(13_10)	// changes direction when hitting a wall$(13_10)	dir *= -1;$(13_10)}$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)if (instance_exists(obj_player))$(13_10){$(13_10)	// check to see if the player is above the platform$(13_10)	if round(obj_player.y + (obj_player.sprite_height/2) > y+1) || (obj_player.key_down) mask_index = -1;$(13_10)	else $(13_10)	{$(13_10)		mask_index = spr_platformH;$(13_10)		if (place_meeting(x,y-1, obj_player))$(13_10)		{$(13_10)			obj_player.hsp_carry = hsp;$(13_10)		}$(13_10)	}$(13_10)}"

{
	// First ensure collision mask is on
mask_index = spr_platformH

hsp = dir * movespeed;

// Horizontal collision
if (place_meeting(x+hsp, y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
	
	// changes direction when hitting a wall
	dir *= -1;
}

x += hsp;

if (instance_exists(obj_player))
{
	// check to see if the player is above the platform
	if round(obj_player.y + (obj_player.sprite_height/2) > y+1) || (obj_player.key_down) mask_index = -1;
	else 
	{
		mask_index = spr_platformH;
		if (place_meeting(x,y-1, obj_player))
		{
			obj_player.hsp_carry = hsp;
		}
	}
}
}

