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

h_collision(o_enemy, o_wall);
y_collision(o_enemy, o_wall);


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
