vertical_speed += grav;

if(place_meeting(x+horizontal_speed, y, o_wall))
{
	while(!place_meeting(x+sign(horizontal_speed), y, o_wall))
	{
		x += sign(horizontal_speed);
	}
	horizontal_speed = -horizontal_speed;
}	
x += horizontal_speed;

if(place_meeting(x, y+vertical_speed, o_wall))
{
	while(!place_meeting(x, y+sign(vertical_speed), o_wall))
	{
		y += sign(vertical_speed);
	}
	vertical_speed = 0;
}	
y += vertical_speed;


if(!place_meeting(x, y+1, o_wall)) 
{
	sprite_index = s_enemy_jump;
	image_speed = 0;
	if(sign(vertical_speed) > 0) image_index = 1;
	else image_index = 0;
}
else 
{
	image_speed = 1;
	if(horizontal_speed == 0) sprite_index = s_enemy;
	else
	{
		sprite_index = s_enemy_r;
		image_xscale = sign(horizontal_speed);
	}
}
