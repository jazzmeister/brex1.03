


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
