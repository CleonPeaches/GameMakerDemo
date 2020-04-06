/// animate(player_object, inputs)
/// @description animate(player_object, inputs)
/// @param player_object
/// @param inputs

player = argument0;
inputs = argument1;

if(!place_meeting(player.x, player.y+1, o_wall)) 
{
	player.sprite_index = s_player_jump;
	player.image_speed = 0;
	if(sign(player.vertical_speed) > 0) player.image_index = 1;
	else player.image_index = 0;
}
else 
{
	image_speed = 1;
	if(player.horizontal_speed == 0) player.sprite_index = s_player;
	else
	{
		player.sprite_index = s_player_run;
		image_xscale = sign(player.horizontal_speed);
	}
}