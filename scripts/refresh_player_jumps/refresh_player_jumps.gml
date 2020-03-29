/// player_refresh_jumps(player_object, wall_object)
/// @description player_refresh_jumps(player_object, wall_object)
/// @param player_object
/// @param wall_object

player_object = argument0;
wall_object = argument1;

if(place_meeting(player_object.x, player_object.y+1, wall_object))
{
	player_object.jump_count = 2;
}	