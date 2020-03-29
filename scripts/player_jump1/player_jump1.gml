/// player_jump(x_pos, y_pos, wall_object, key_jump)
/// @description player_jump(x_pos, y_pos, wall_object, key_jump)
/// @param x_pos
/// @param y_pos
/// @param wall_object
/// @param key_jump

x_pos = argument0;
y_pos = argument1;
wall_object = argument2;
key_jump = argument3;

if(place_meeting(x_pos, y_pos+1, wall_object) and (key_jump))
{
	vertical_speed = -7;	
}