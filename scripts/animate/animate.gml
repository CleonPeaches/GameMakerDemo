/// animate(player_object, inputs)
/// @description animate(player_object, inputs)
/// @param player_object
/// @param inputs

player = argument0;
inputs = argument1;

if(inputs[?"a"] or inputs[?"d"]) 
{
	player.sprite_index = s_player_run;
}
else if(!place_meeting(player.x, player.y+1, o_wall)) 
{
	player.sprite_index = s_player_jump;
	player.image_speed = 0;
	if(sign(player.vertical_speed) > 0) 
	{
		player.image_index = 1;
	}
}
else 
{
	player.sprite_index = s_player;
}

if(player.horizontal_speed != 0) 
{
	image_xscale = sign(player.horizontal_speed);
}