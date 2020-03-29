key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

calc_movement(key_left, key_right, grav);
player_jump(x, y, oWall, key_jump);

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
