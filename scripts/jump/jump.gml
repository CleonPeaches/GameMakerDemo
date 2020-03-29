/// jump(entity_object, key_jump)
/// @description entity_jump(entity_object, key_jump)
/// @param key_jump
/// @param entity_object

entity_object = argument0;
key_jump = argument1;

show_debug_message("About to enter jump block...");
if(entity_object.jump_count > 0 and key_jump)
{
	show_debug_message("Entered jump block");
	vertical_speed = -6;
	entity_object.jump_count -= 1;
}