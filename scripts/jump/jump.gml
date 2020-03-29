/// jump(entity_object, key_jump)
/// @description entity_jump(entity_object, key_jump)
/// @param key_jump
/// @param entity_object

entity_object = argument0;
key_jump = argument1;

if(entity_object.jump_count > 0 and key_jump)
{
	vertical_speed = -6;
	entity_object.jump_count -= 1;
}