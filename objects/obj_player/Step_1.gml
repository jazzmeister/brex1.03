
// water - slows the movement of the player when in it

if instance_position(x,y-16,obj_water) 
	{
		state = playerState.swimming;
		movespeed = 2;
		if (key_up) vsp = -2;
		if (key_down) vsp = 2;
		//vsp = vsp-0.525;
		grav = -0.6;
	}
	else
	{
		// return movespeed back to normal when out of water
		movespeed = 7;
	}