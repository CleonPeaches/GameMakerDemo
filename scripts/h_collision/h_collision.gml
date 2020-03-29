/// h_collision(entity_object, horizontal_speed, wall_object)
/// @description entity_h_collision(entity_object, horizontal_speed, wall_object)
/// @param entity_object
/// @param horizontal_speed
/// @param wall_object

entity_object = argument0;
horizontal_speed = argument1;
wall_object = argument2;

if(place_meeting(entity_object.x+horizontal_speed, entity_object.y, wall_object))
{
	while(!place_meeting(entity_object.x+sign(horizontal_speed), entity_object.y, wall_object))
	{
		entity_object.x += sign(horizontal_speed);
	}
	horizontal_speed = 0;
}	
entity_object.x += horizontal_speed;