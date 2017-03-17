/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C1F0F24
/// @DnDArgument : "code" "/// @Update Water\n$(13_10)$(13_10)var __ndist = (sprite_width/max(1,nodes-1)); //The distance between the nodes.$(13_10)//Toggle off mask to interact with other bodies of water$(13_10)with obj_water {$(13_10) mask_index = -1; $(13_10)}$(13_10)$(13_10)//Here we add random disturbance to the water, by adding to random nodes' vertical speed.$(13_10)repeat(disturbance*image_xscale) {$(13_10) vspd[irandom_range(1,nodes-1)] += choose(.1,-.1);$(13_10)}$(13_10)$(13_10)//Smooth out vspd values$(13_10)vspd = array_smooth_1d(vspd,(smoothness-1)/2)$(13_10)$(13_10)//Updating the nodes' vertical speed and y position through a loop.$(13_10)for(var i=0;i<nodes;i++){$(13_10) //If we are working with the end nodes, or if the water nodes is below other water or solids, we want them to stand still.$(13_10) if i == nodes-1 || i == 0 || position_meeting(x+i*__ndist,y-1,obj_water) {$(13_10)  ypos[i] = 0;$(13_10) } else {$(13_10)  var __r = numeric_springing(ypos[i],vspd[i],0,damp,freq,time);$(13_10)  ypos[i] = __r[0];$(13_10)  vspd[i] = __r[1];$(13_10) }$(13_10) ypos[i] = median(min(wave_max,sprite_height),ypos[i],-wave_max); //We limit this to be withing out wave_max range (and no deeper than our sprite is tall).$(13_10) $(13_10) //We then force down water touching with solids or water above itself$(13_10) while ypos[i] < 0 && (collision_line(x+i*__ndist,y+ypos[i],x+i*__ndist,y,obj_water,false,true) || collision_line(x+i*__ndist,y+ypos[i],x+i*__ndist,y,solids,false,true)) {$(13_10)  ypos[i]++;$(13_10) }$(13_10)}$(13_10)$(13_10)//Toggle on mask again$(13_10)with obj_water {$(13_10) mask_index = mask_water;$(13_10)}"

{
	/// @Update Water\n

var __ndist = (sprite_width/max(1,nodes-1)); //The distance between the nodes.
//Toggle off mask to interact with other bodies of water
with obj_water {
 mask_index = -1; 
}

//Here we add random disturbance to the water, by adding to random nodes' vertical speed.
repeat(disturbance*image_xscale) {
 vspd[irandom_range(1,nodes-1)] += choose(.1,-.1);
}

//Smooth out vspd values
vspd = array_smooth_1d(vspd,(smoothness-1)/2)

//Updating the nodes' vertical speed and y position through a loop.
for(var i=0;i<nodes;i++){
 //If we are working with the end nodes, or if the water nodes is below other water or solids, we want them to stand still.
 if i == nodes-1 || i == 0 || position_meeting(x+i*__ndist,y-1,obj_water) {
  ypos[i] = 0;
 } else {
  var __r = numeric_springing(ypos[i],vspd[i],0,damp,freq,time);
  ypos[i] = __r[0];
  vspd[i] = __r[1];
 }
 ypos[i] = median(min(wave_max,sprite_height),ypos[i],-wave_max); //We limit this to be withing out wave_max range (and no deeper than our sprite is tall).
 
 //We then force down water touching with solids or water above itself
 while ypos[i] < 0 && (collision_line(x+i*__ndist,y+ypos[i],x+i*__ndist,y,obj_water,false,true) || collision_line(x+i*__ndist,y+ypos[i],x+i*__ndist,y,solids,false,true)) {
  ypos[i]++;
 }
}

//Toggle on mask again
with obj_water {
 mask_index = mask_water;
}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5BE20EC6
/// @DnDArgument : "code" "/// @Collisions\n$(13_10)var __ndist = (sprite_width/max(1,nodes-1)), __id, __array = 0; //The distance between the nodes.$(13_10)//Collisions with the water surface$(13_10)for(var i=1;i<nodes;i++){$(13_10) do {$(13_10)  //Find instance of collision$(13_10)  __id = collision_line(x+(i-1)*__ndist,y+ypos[i-1],x+i*__ndist,y+ypos[i],all,false,true);$(13_10)  with __id {$(13_10)   is_water_surface_collision = true; //A special accessor variable$(13_10)   //Add it to the array$(13_10)   if is_array(__array) {$(13_10)    __array[array_length_1d(__array)] = id;$(13_10)   } else {$(13_10)    __array[0] = id;$(13_10)   }$(13_10)   //Move away temporarily$(13_10)   y -= 99999;$(13_10)  }$(13_10) } until __id = noone;$(13_10)}$(13_10)//Collisions with the water body$(13_10)for(var i=1;i<nodes;i++){$(13_10) do {$(13_10)  //Find instance of collision$(13_10)  __id = collision_rectangle(x+(i-1)*__ndist,y+mean(ypos[i-1],ypos[i]),x+i*__ndist,y+sprite_height,all,false,true);$(13_10)  with __id {$(13_10)   is_water_surface_collision = false; //A special accessor variable$(13_10)   //Add it to the array$(13_10)   if is_array(__array) {$(13_10)    __array[array_length_1d(__array)] = id;$(13_10)   } else {$(13_10)    __array[0] = id;$(13_10)   }$(13_10)   //Move away temporarily$(13_10)   y -= 99999;$(13_10)  }$(13_10) } until __id = noone;$(13_10)}$(13_10)//Move instances back and perform collision events$(13_10)if is_array(__array) {$(13_10) for(var i=0;i<array_length_1d(__array);i++){$(13_10)  with __array[i] {$(13_10)   y += 99999;$(13_10)   event_perform(ev_collision,other.object_index);$(13_10)  }$(13_10) }$(13_10)}"

{
	/// @Collisions\n
var __ndist = (sprite_width/max(1,nodes-1)), __id, __array = 0; //The distance between the nodes.
//Collisions with the water surface
for(var i=1;i<nodes;i++){
 do {
  //Find instance of collision
  __id = collision_line(x+(i-1)*__ndist,y+ypos[i-1],x+i*__ndist,y+ypos[i],all,false,true);
  with __id {
   is_water_surface_collision = true; //A special accessor variable
   //Add it to the array
   if is_array(__array) {
    __array[array_length_1d(__array)] = id;
   } else {
    __array[0] = id;
   }
   //Move away temporarily
   y -= 99999;
  }
 } until __id = noone;
}
//Collisions with the water body
for(var i=1;i<nodes;i++){
 do {
  //Find instance of collision
  __id = collision_rectangle(x+(i-1)*__ndist,y+mean(ypos[i-1],ypos[i]),x+i*__ndist,y+sprite_height,all,false,true);
  with __id {
   is_water_surface_collision = false; //A special accessor variable
   //Add it to the array
   if is_array(__array) {
    __array[array_length_1d(__array)] = id;
   } else {
    __array[0] = id;
   }
   //Move away temporarily
   y -= 99999;
  }
 } until __id = noone;
}
//Move instances back and perform collision events
if is_array(__array) {
 for(var i=0;i<array_length_1d(__array);i++){
  with __array[i] {
   y += 99999;
   event_perform(ev_collision,other.object_index);
  }
 }
}
}

