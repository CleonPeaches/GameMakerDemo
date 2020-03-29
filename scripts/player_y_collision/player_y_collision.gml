/// player_y_collision(vertical_speed)
/// @description player_v_collision(vertical_speed)
/// @param vertical_speed

vertical_speed = argument0;

if(place_meeting(oPlayer.x, oPlayer.y+vertical_speed, oWall))
{
	while(!place_meeting(oPlayer.x, oPlayer.y+sign(vertical_speed), oWall))
	{
		oPlayer.y += sign(vertical_speed);
	}
	vertical_speed = 0;
}	
oPlayer.y += vertical_speed;