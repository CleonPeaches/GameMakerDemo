/// y_collision(player_object, wall_object)
/// @description y_collision(player_object, wall_object)
/// @param player
/// @param wall

player = argument0;
wall = argument1;

if(place_meeting(player.x, player.y+player.vertical_speed, wall))
{
	while(!place_meeting(player.x, player.y+sign(player.vertical_speed), wall))
	{
		player.y += sign(player.vertical_speed);
	}
	player.vertical_speed = 0;
}	
player.y += player.vertical_speed;