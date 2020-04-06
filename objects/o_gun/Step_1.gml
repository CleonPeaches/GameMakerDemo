x = o_player.x;
y = o_player.y+10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firing_delay -= 1;
recoil = max(0, recoil-1);

if(mouse_check_button(mb_left) and firing_delay < 0)
{
	recoil = 4;
	firing_delay = 5;
	with(instance_create_layer(x, y, "Bullets", o_bullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}


x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if(image_angle > 90 and image_angle < 270) image_yscale = -1; else image_yscale = 1;
