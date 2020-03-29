/// player_h_collision(horizontal_speed)
/// @description player_h_collision(horizontal_speed)
/// @param horizontal_speed

horizontal_speed = argument0;

if(place_meeting(oPlayer.x+horizontal_speed, oPlayer.y, oWall))
{
	while(!place_meeting(oPlayer.x+sign(horizontal_speed), oPlayer.y, oWall))
	{
		oPlayer.x += sign(horizontal_speed);
	}
	horizontal_speed = 0;
}	
oPlayer.x += horizontal_speed;