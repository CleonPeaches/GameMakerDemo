/// calc_movement(key_left, key_right, grav)
/// @description calc_movement(key_left, key_right, grav)
/// @param key_left
/// @param key_right
/// @param grav

key_left = argument0;
key_right = argument1;
grav = argument2;

var move = key_right - key_left;
horizontal_speed = move * walk_speed;
vertical_speed += grav;