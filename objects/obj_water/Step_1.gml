/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4DC1F37D
/// @DnDArgument : "code" "///Update node count$(13_10)if nodes != array_length_1d(ypos) {$(13_10) ypos = 0;$(13_10) vspd = 0;$(13_10) for(var i=nodes;i>0;i--){$(13_10)  ypos[i-1] = 0;$(13_10)  vspd[i-1] = 0;$(13_10) }$(13_10)}"

{
	///Update node count
if nodes != array_length_1d(ypos) {
 ypos = 0;
 vspd = 0;
 for(var i=nodes;i>0;i--){
  ypos[i-1] = 0;
  vspd[i-1] = 0;
 }
}
}

