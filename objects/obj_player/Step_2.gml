if instance_position(x,y+200,obj_water)
{

	// return movespeed back to normal when out of water
	movespeed = 7;
	if (state == playerState.swimming)
	{
		state = playerState.jumping;
		show_debug_message("JUMPING");
	}
}