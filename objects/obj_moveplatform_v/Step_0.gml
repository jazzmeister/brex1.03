
	// First ensure collision mask is on
mask_index = spr_platformH


// Move the platform
vsp = dir * movespeed;
// Vertical collision
if (place_meeting(x, y+vsp,obj_wall))
{
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
	// changes direction when hitting a wall
	dir *= -1;
}
y += vsp;


var maskOn = spr_platformV;
var maskOff = -1;

// This needs work to get the vertical platforms to work correctly
if (instance_exists(obj_player))
{
	// check to see if the player is above the platform
	if round(obj_player.y + (obj_player.sprite_height/2) > y+3) || (obj_player.key_down)
	{	
		mask_index = maskOff;  		
	}
			
	else
	{
		mask_index = maskOn;
		//maxjumps = 2;
		// Allows the player to jump if on platform going down
		if (obj_player.key_jump)
		{
			with (obj_player) scr_playerJump();
		}
	
		if (place_meeting(x,y, obj_player))		
		{			
			obj_player.vsp_carry = vsp;
			obj_player.vsp = vsp;									
		}
	}	
}


	
