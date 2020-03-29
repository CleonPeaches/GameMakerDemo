/// y_collision(entity_object, vertical_speed, wall_object)
/// @description y_collision(entity_object, vertical_speed, wall_object)
/// @param entity_object
/// @param vertical_speed
/// @param wall_object

entity_object = argument0;
vertical_speed = argument1;
wall_object = argument2;

if(place_meeting(entity_object.x, entity_object.y+vertical_speed, wall_object))
{
	while(!place_meeting(entity_object.x, entity_object.y+sign(vertical_speed), wall_object))
	{
		entity_object.y += sign(vertical_speed);
	}
	vertical_speed = 0;
}	
entity_object.y += vertical_speed;