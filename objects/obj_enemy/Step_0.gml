/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 181CCF81
/// @DnDArgument : "code" "hsp = dir * movespeed;$(13_10)vsp += grav;$(13_10)$(13_10)// Horizontal collision$(13_10)if (place_meeting(x+hsp, y,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)	{$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)	$(13_10)	// changes direction when hitting a wall$(13_10)	dir *= -1;$(13_10)}$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)$(13_10)// Vertical collision$(13_10)if (place_meeting(x, y+vsp,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall))$(13_10)	{$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)	$(13_10)	// stops enemy walking off edges$(13_10)	if (fearofheights) && !position_meeting(x+(hit_box_w/2)*(dir), y+(hit_box_h/2)+8, obj_wall)$(13_10)	{$(13_10)		dir *= -1;$(13_10)	}$(13_10)}$(13_10)y += vsp;$(13_10)$(13_10)$(13_10)// Enemy collision$(13_10)if (place_meeting(x, y, obj_player))$(13_10){$(13_10)	// Compares if enemy colliding with the player 16 pixels above us$(13_10)	if (obj_player.y < y-16)$(13_10)	{$(13_10)		with (obj_player) vsp =- jumpspeed;$(13_10)		audio_play_sound(snd_mini_jump, 1, 0);$(13_10)		sprite_index = spr_enemy_death;$(13_10)		alarm[0] = 10;$(13_10)		audio_play_sound(snd_enemy_death, 2, 0);$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		// Do something to player$(13_10)		scr_death();$(13_10)	}$(13_10)}"

{
	hsp = dir * movespeed;
vsp += grav;

// Horizontal collision
if (place_meeting(x+hsp, y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
	
	// changes direction when hitting a wall
	dir *= -1;
}

x += hsp;


// Vertical collision
if (place_meeting(x, y+vsp,obj_wall))
{
	while(!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y += sign(vsp);
	}
	vsp = 0;
	
	// stops enemy walking off edges
	if (fearofheights) && !position_meeting(x+(hit_box_w/2)*(dir), y+(hit_box_h/2)+8, obj_wall)
	{
		dir *= -1;
	}
}
y += vsp;


// Enemy collision
if (place_meeting(x, y, obj_player))
{
	// Compares if enemy colliding with the player 16 pixels above us
	if (obj_player.y < y-16)
	{
		with (obj_player) vsp =- jumpspeed;
		audio_play_sound(snd_mini_jump, 1, 0);
		sprite_index = spr_enemy_death;
		alarm[0] = 10;
		audio_play_sound(snd_enemy_death, 2, 0);
		
	}
	else
	{
		// Do something to player
		scr_death();
	}
}
}

