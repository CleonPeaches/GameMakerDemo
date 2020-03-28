key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var move = key_right - key_left;
horizontal_speed = move * walk_speed;
vertical_speed += grav;
if(place_meeting(x, y+1, oWall) and (key_jump))
{
	vertical_speed = -7;	
}

//Horizontal collision
if(place_meeting(x+horizontal_speed, y, oWall))
{
	while(!place_meeting(x+sign(horizontal_speed), y, oWall))
	{
		x += sign(horizontal_speed);
	}
	horizontal_speed = 0;
}	
x += horizontal_speed;

//Vertical collision
if(place_meeting(x, y+vertical_speed, oWall))
{
	while(!place_meeting(x, y+sign(vertical_speed), oWall))
	{
		y += sign(vertical_speed);
	}
	vertical_speed = 0;
}	
y += vertical_speed;
