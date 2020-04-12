if(done == 0)
{
	vertical_speed += grav;
	
	if(place_meeting(x+horizontal_speed, y, o_wall))
	{
		while(!place_meeting(x+sign(horizontal_speed), y, o_wall))
		{
			x += sign(horizontal_speed);
		}
		horizontal_speed = 0;
	}	
	x += horizontal_speed;
	
	if(place_meeting(x, y+vertical_speed, o_wall))
	{
		if(vertical_speed > 0) 
		{
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x, y+sign(vertical_speed), o_wall))
		{
			y += sign(vertical_speed);
		}
		vertical_speed = 0;
	}	
	y += vertical_speed;
}