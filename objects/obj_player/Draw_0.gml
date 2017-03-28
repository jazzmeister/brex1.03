

if(state == playerState.idle)
{
	draw_self();
	image_index = 0;
	{
		image_speed = 0;
	}
}
if(state == playerState.walking)
{
	draw_self();
	image_speed = 1;
	
}
if(facing == "LEFT")
{
	image_xscale = -1;
}
if(facing == "RIGHT")
{
	image_xscale = 1;
}
