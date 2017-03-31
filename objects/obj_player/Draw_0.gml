xpos = x + 0;
ypos = y + 0;

if(state == playerState.idle)
{
	draw_self();
	image_index = 0;
	{
		image_speed = 0.5;
	}
}


// Draw the sprites when facing left
if(facing == "LEFT")
{
	// Flips idle state of player
	image_xscale = -1;
	
	
	if(state == playerState.walking)
	{
		image_speed = 0.2;
		draw_sprite(spr_player_walk_left, -1,xpos,ypos);
	}
	
	if (state == playerState.jumping)
	{
		draw_sprite(spr_player_jump_left, -1,xpos,ypos);
	}
	
	if (state == playerState.swimming)
	{
		draw_sprite(spr_player_swim_left, -1,xpos,ypos);
	}
}



// Draw the sprites when facing right
if(facing == "RIGHT")
{
	// Flips idle state of player
	image_xscale = 1;
	
	if(state == playerState.walking)
	{
		image_speed = 0.2;
		draw_sprite(spr_player_walk_right, -1,xpos,ypos);
	}
	
	if (state == playerState.jumping)
	{
		draw_sprite(spr_player_jump_right, -1,xpos,ypos);
	}
	
	if (state == playerState.swimming)
	{
		draw_sprite(spr_player_swim_right, -1,xpos,ypos);
	}
}







