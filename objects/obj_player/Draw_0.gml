

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
