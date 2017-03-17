/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26284DAB
/// @DnDArgument : "code" "///array_smooth_1d(array,neighboors);$(13_10)var _array = argument0, _length = array_length_1d(_array), _narray, _mean, _nboors = argument1;$(13_10)for(var _i=_length-1;_i>=0;_i--){$(13_10) if is_real(_array[_i]) {$(13_10)  _mean = _array[_i]; //The original value$(13_10)  //Neighboors to the left$(13_10)  for(var _j=1;_j<=_nboors;_j++){$(13_10)   //Stop$(13_10)   if _i-_j < 0 {$(13_10)    break;$(13_10)   }$(13_10)   //or add to total$(13_10)   if is_real(_array[_i-_j]) {$(13_10)    _mean += _array[_i-_j];$(13_10)   }$(13_10)  }$(13_10)  //Neighboors to the right$(13_10)  for(var _j=1;_j<=_nboors;_j++){$(13_10)   //Stop$(13_10)   if _i+_j >= _length {$(13_10)    break;$(13_10)   }$(13_10)   //or add to total$(13_10)   if is_real(_array[_i+_j]) {$(13_10)    _mean += _array[_i+_j];$(13_10)   }$(13_10)  }$(13_10)  //Get the new array value$(13_10)  _narray[_i] = _mean/(1+2*_nboors);$(13_10) } else {$(13_10)  //Parse old value if it is not a real value$(13_10)  _narray[_i] = _array[_i];$(13_10) }$(13_10)}$(13_10)return _narray;"

{
	///array_smooth_1d(array,neighboors);
var _array = argument0, _length = array_length_1d(_array), _narray, _mean, _nboors = argument1;
for(var _i=_length-1;_i>=0;_i--){
 if is_real(_array[_i]) {
  _mean = _array[_i]; //The original value
  //Neighboors to the left
  for(var _j=1;_j<=_nboors;_j++){
   //Stop
   if _i-_j < 0 {
    break;
   }
   //or add to total
   if is_real(_array[_i-_j]) {
    _mean += _array[_i-_j];
   }
  }
  //Neighboors to the right
  for(var _j=1;_j<=_nboors;_j++){
   //Stop
   if _i+_j >= _length {
    break;
   }
   //or add to total
   if is_real(_array[_i+_j]) {
    _mean += _array[_i+_j];
   }
  }
  //Get the new array value
  _narray[_i] = _mean/(1+2*_nboors);
 } else {
  //Parse old value if it is not a real value
  _narray[_i] = _array[_i];
 }
}
return _narray;
}

