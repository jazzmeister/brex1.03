/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3956E221
/// @DnDArgument : "code" "/// Get the player's input$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_left = -keyboard_check(vk_left);$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)key_down = keyboard_check(vk_down);$(13_10)$(13_10)// React to inputs$(13_10)move = key_left + key_right;$(13_10)hsp = move * movespeed;$(13_10)if (vsp < 10) vsp += grav;$(13_10)$(13_10)if (place_meeting (x,y+1, obj_wall))$(13_10){$(13_10)	if (key_jump) vsp = -jumpspeed;$(13_10)}$(13_10)$(13_10)$(13_10)var hsp_final = hsp + hsp_carry;$(13_10)hsp_carry = 0;$(13_10)$(13_10)// Horizontal collision$(13_10)if (place_meeting(x+hsp_final, y,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x+sign(hsp_final),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp_final);$(13_10)	}$(13_10)	hsp_final = 0;$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)x += hsp_final;$(13_10)$(13_10)$(13_10)// Vertical collision$(13_10)if (place_meeting(x, y+vsp,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;"

{
	/// Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_down = keyboard_check(vk_down);

// React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting (x,y+1, obj_wall))
{
	if (key_jump) vsp = -jumpspeed;
}


var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

// Horizontal collision
if (place_meeting(x+hsp_final, y,obj_wall))
{
	while(!place_meeting(x+sign(hsp_final),y,obj_wall))
	{
		x += sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

x += hsp_final;


// Vertical collision
if (place_meeting(x, y+vsp,obj_wall))
{
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;
}

