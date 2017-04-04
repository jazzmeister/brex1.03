{
	/// Get the player's input
key_right = keyboard_check(vk_right);
key_right_release = keyboard_check_released(vk_right);
key_left = -keyboard_check(vk_left);
key_left_release = keyboard_check_released(vk_left);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check (vk_space);
key_jump_release = keyboard_check_released(vk_space);
key_up = keyboard_check (vk_up);
key_down = keyboard_check(vk_down);

// React to inputs


move =  key_right + key_left;


if (vsp < 10) vsp += grav;

// run jumping script
scr_playerJump();


// handles player movement and acceleration
if (key_right || key_left == -1)
{
	hsp += (move)*acc;
	 if (hsp > movespeed) hsp = movespeed;
	 if (hsp < -movespeed) hsp = -movespeed;
	 
}
else
{
	// calls the script to apply friction that slows player down gradually
	scr_apply_friction(acc);
}



if (key_left == -1)
{
	if (state != playerState.jumping && state != playerState.falling) 
	{
		if (state != playerState.swimming) 
			{
				state = playerState.walking;
			}	
	
	}
	facing = "LEFT";
	
}


if (key_right)
{
	if (state != playerState.jumping && state != playerState.falling) 
	{
		if (state != playerState.swimming) 
		{
			state = playerState.walking;
		}
	
	}
	facing = "RIGHT";
}


if (vsp > 1 && state != playerState.swimming)
{
	state = playerState.falling;
}

// sets the player back to idle state when not moving
if (key_left_release || key_right_release && state != playerState.jumping)
{
	state = playerState.idle;
}

if (key_jump && !key_down)
{
	state = playerState.jumping;	
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

acceleration = hsp
show_debug_message(hsp);
//if (hsp_final > movespeed) hsp_final = movespeed;


// Vertical collision
if (place_meeting(x, y+vsp_final,obj_wall))
{
	while(!place_meeting(x, y+sign(vsp_final), obj_wall))
	{
		y += sign(vsp_final);
	}
	vsp_final = 0;
	vsp = 0;
	if (state == playerState.falling)
	{
		state = playerState.idle;
	}
	
	
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


}


