{
	/// Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check (vk_space);
key_up = keyboard_check (vk_up);
key_down = keyboard_check(vk_down);

// React to inputs

finalmovespeed = movespeed;
move = key_left + key_right;
hsp = move * finalmovespeed;


state = playerState.idle;

if (vsp < 10) vsp += grav;


scr_playerJump();


state = playerState.idle;
show_debug_message("IDLE");

if (key_left == -1)
{
	state = playerState.walking;
	facing = "LEFT";
	show_debug_message("LEFT");
}

if (key_right)
{
	state = playerState.walking;
	facing = "RIGHT";
	show_debug_message("RIGHT");
}
if (key_jump)
{
	state = playerState.jumping;
	show_debug_message("JUMP");
	
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
	if (key_up) vsp = -4;
	if (key_down) vsp = 4;
	if !place_meeting(x,y+5,obj_ladder) ladder = false;
	if (key_jump) ladder = false;
}

if !(ladder)
{
	grav = 0.5;
}

// water - slows the movement of the player when in it
if place_meeting(x,y-16,obj_water) 
{
	if (key_up) vsp = -2;
	if (key_down) vsp =2;

}
else
{
	// return movespeed back to normal when out of water
	movespeed = 7;
}

}

