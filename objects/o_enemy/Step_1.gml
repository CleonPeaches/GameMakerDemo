if(hp <= 0)
{
	with(instance_create_layer(x, y, layer, o_dead))
	{
		direction = other.hitfrom;
		horizontal_speed = lengthdir_x(3, direction);
		vertical_speed = lengthdir_y(3, direction)-2;
		if (sign(horizontal_speed) != 0) image_xscale = sign(horizontal_speed);
	}
	instance_destroy();
}