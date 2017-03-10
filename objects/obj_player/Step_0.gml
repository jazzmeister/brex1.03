/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3956E221
/// @DnDArgument : "code" "/// Get the player's input$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_left = -keyboard_check(vk_left);$(13_10)key_jump = keyboard_check_pressed(vk_space);$(13_10)key_jump_held = keyboard_check (vk_space);$(13_10)key_up = keyboard_check (vk_up);$(13_10)key_down = keyboard_check(vk_down);$(13_10)$(13_10)// React to inputs$(13_10)move = key_left + key_right;$(13_10)hsp = move * movespeed;$(13_10)$(13_10)if (vsp < 10) vsp += grav;$(13_10)$(13_10)$(13_10)// Double jump (or number of jumps you want)$(13_10)if (place_meeting (x,y+1, obj_wall))$(13_10){$(13_10)	jumps = jumpsmax;$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	if (jumps == jumpsmax) jumps -=1;$(13_10)}$(13_10)$(13_10)if (key_jump) && (jumps > 0) $(13_10){$(13_10)	jumps -= 1;$(13_10)	vsp = -jumpspeed;$(13_10)}$(13_10)$(13_10)// Variable jump height$(13_10)if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed/4);$(13_10)$(13_10)// Wall jump$(13_10)$(13_10)if (key_jump) && (place_meeting(x+1, y, obj_wall) || place_meeting(x-1,y,obj_wall))$(13_10){$(13_10)	vsp =-jumpspeed;$(13_10)}$(13_10)$(13_10)$(13_10)var hsp_final = hsp + hsp_carry;$(13_10)hsp_carry = 0;$(13_10)$(13_10)// Horizontal collision$(13_10)if (place_meeting(x+hsp_final, y,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x+sign(hsp_final),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp_final);$(13_10)	}$(13_10)	hsp_final = 0;$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)x += hsp_final;$(13_10)$(13_10)$(13_10)// Vertical collision$(13_10)if (place_meeting(x, y+vsp,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;$(13_10)$(13_10)// Ladder$(13_10)if (key_up || key_down)$(13_10){$(13_10)	if place_meeting(x,y+5,obj_ladder) ladder = true;$(13_10)}$(13_10)$(13_10)if (ladder)$(13_10){$(13_10)	vsp = 0;$(13_10)	grav = 0;$(13_10)	//hsp = 0;$(13_10)	if (key_up) vsp = -2;$(13_10)	if (key_down) vsp = 2;$(13_10)	if !place_meeting(x,y+5,obj_ladder) ladder = false;$(13_10)	if (key_jump) ladder = false;$(13_10)}$(13_10)$(13_10)if !(ladder)$(13_10){$(13_10)	grav = 0.5;$(13_10)}$(13_10)$(13_10)$(13_10)"

{
	/// Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check (vk_space);
key_up = keyboard_check (vk_up);
key_down = keyboard_check(vk_down);

// React to inputs
move = key_left + key_right;
hsp = move * movespeed;

if (vsp < 10) vsp += grav;


// Double jump (or number of jumps you want)
if (place_meeting (x,y+1, obj_wall))
{
	jumps = jumpsmax;
}

else
{
	if (jumps == jumpsmax) jumps -=1;
}

if (key_jump) && (jumps > 0) 
{
	jumps -= 1;
	vsp = -jumpspeed;
}

// Variable jump height
if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed/4);

// Wall jump

if (key_jump) && (place_meeting(x+1, y, obj_wall) || place_meeting(x-1,y,obj_wall))
{
	vsp =-jumpspeed;
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

// Ladder
if (key_up || key_down)
{
	if place_meeting(x,y+5,obj_ladder) ladder = true;
}

if (ladder)
{
	vsp = 0;
	grav = 0;
	//hsp = 0;
	if (key_up) vsp = -2;
	if (key_down) vsp = 2;
	if !place_meeting(x,y+5,obj_ladder) ladder = false;
	if (key_jump) ladder = false;
}

if !(ladder)
{
	grav = 0.5;
}



}

