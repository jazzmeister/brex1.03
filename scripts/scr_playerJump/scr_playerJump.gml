/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0660A43E
/// @DnDArgument : "code" "// Double jump (or number of jumps you want)$(13_10)if (place_meeting (x,y+1, obj_wall))$(13_10){$(13_10)	jumps = jumpsmax;$(13_10)	show_debug_message("jumpsmax:");$(13_10)	show_debug_message(jumpsmax);$(13_10)	$(13_10)}$(13_10)$(13_10)if (place_meeting (x,y+3, obj_moveplatform_v))$(13_10)	{$(13_10)		jumps = jumpsmax;$(13_10)		show_debug_message("Platform Vertical jumpsmax:");$(13_10)	show_debug_message(jumpsmax);$(13_10)	}$(13_10)$(13_10)else$(13_10){$(13_10)	if (jumps == jumpsmax) jumps -=1;$(13_10)}$(13_10)$(13_10)if (key_jump) && (jumps > 0) $(13_10){$(13_10)	show_debug_message(jumps);$(13_10)	jumps -= 1;$(13_10)	vsp = -jumpspeed;$(13_10)}$(13_10)$(13_10)// Variable jump height$(13_10)if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed/4);$(13_10)$(13_10)"

{
	// Double jump (or number of jumps you want)
if (place_meeting (x,y+1, obj_wall))
{
	jumps = jumpsmax;
	show_debug_message("jumpsmax:");
	show_debug_message(jumpsmax);
	
}

if (place_meeting (x,y+3, obj_moveplatform_v))
	{
		jumps = jumpsmax;
		show_debug_message("Platform Vertical jumpsmax:");
	show_debug_message(jumpsmax);
	}

else
{
	if (jumps == jumpsmax) jumps -=1;
}

if (key_jump) && (jumps > 0) 
{
	show_debug_message(jumps);
	jumps -= 1;
	vsp = -jumpspeed;
}

// Variable jump height
if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed/4);


}

