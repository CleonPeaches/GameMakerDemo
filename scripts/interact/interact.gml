/// interact(player_object)
/// @description interact(player_object)
/// @param player_object

player = argument0;

if(place_meeting(player.x, player.y, o_coin) and player.sprite_index == s_player_reach_down)
{
	player.vertical_speed -= 13;	
}