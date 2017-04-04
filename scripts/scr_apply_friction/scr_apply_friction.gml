/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68B73DF0
/// @DnDArgument : "code" "/// apply_friction(amount)$(13_10)var amount = argument[0];$(13_10)$(13_10)if (hsp != 0) $(13_10){$(13_10)	if (abs(hsp) -amount > 0)$(13_10)	{$(13_10)		hsp -= amount*image_xscale;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		hsp = 0;$(13_10)	}$(13_10)$(13_10)}"

{
	/// apply_friction(amount)
var amount = argument[0];

if (hsp != 0) 
{
	if (abs(hsp) -amount > 0)
	{
		hsp -= amount*image_xscale;
	}
	else
	{
		hsp = 0;
	}

}
}

