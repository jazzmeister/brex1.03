/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FC6AC6D
/// @DnDArgument : "code" "///Splash water$(13_10)if is_water_surface_collision {$(13_10) var __vspd = (y-yprevious)/3, //This instance's vertical speed$(13_10) __pos = mean(bbox_left,bbox_right); //And it's horizontal center$(13_10) with other {$(13_10)  __pos -= x; //Compared to the water's placement$(13_10)  __pos = clamp(round(__pos/sprite_width*nodes),0,nodes-1); //Converted to placement in array$(13_10)  vspd[__pos] += __vspd;$(13_10)  $(13_10) }$(13_10)} else {$(13_10) //Just for visually slowing down in the water$(13_10)// x = mean(x, xprevious);$(13_10) //y = mean(y,yprevious);$(13_10) movespeed = 3;$(13_10)}"

{
	///Splash water
if is_water_surface_collision {
 var __vspd = (y-yprevious)/3, //This instance's vertical speed
 __pos = mean(bbox_left,bbox_right); //And it's horizontal center
 with other {
  __pos -= x; //Compared to the water's placement
  __pos = clamp(round(__pos/sprite_width*nodes),0,nodes-1); //Converted to placement in array
  vspd[__pos] += __vspd;
  
 }
} else {
 //Just for visually slowing down in the water
// x = mean(x, xprevious);
 //y = mean(y,yprevious);
 movespeed = 3;
}
}

