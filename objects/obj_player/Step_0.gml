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
var vsp_final = vsp + vsp_carry;
hsp_carry = 0;
vsp_carry = 0;

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
if (place_meeting(x, y+vsp_final,obj_wall))
{
	while(!place_meeting(x, y+sign(vsp_final), obj_wall))
	{
		y += sign(vsp_final);
	}
	vsp_final = 0;
	vsp = 0;
}
y += vsp_final;

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