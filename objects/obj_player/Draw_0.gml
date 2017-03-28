if(state == playerState.idle)
{
	draw_self();
	image_index = 0;
	{
		image_speed = 0.5;
	}
}

if(facing == "LEFT")
{
	image_xscale = -1;
}
if(facing == "RIGHT")
{
	image_xscale = 1;
}


if(state == playerState.walking)
{
	if(facing == "LEFT")
{
	image_speed = 0.2;
	var xpos = x + 0;
	var ypos = y + 0;
	draw_sprite(spr_player_walk_left, -1,xpos,ypos);
}
if(facing == "RIGHT")
{
	image_speed = 0.2;
	var xpos = x + 0;
	var ypos = y + 0;
	draw_sprite(spr_player_walk_right, -1,xpos,ypos);
}
		
}

