/// h_collision(player_object, wall_object)
/// @description h_collision(player_object, wall_object)
/// @param player
/// @param wall

var player = argument0;
var wall = argument1;

if(place_meeting(player.x+player.horizontal_speed, player.y, wall))
{
	while(!place_meeting(player.x+sign(player.horizontal_speed), player.y, wall))
	{
		player.x += sign(player.horizontal_speed);
	}
	player.horizontal_speed = 0;
}	
player.x += player.horizontal_speed;