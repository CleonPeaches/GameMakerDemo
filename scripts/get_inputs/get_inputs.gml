/// get_inputs()
/// @description get_inputs()

inputs = ds_map_create();
ds_map_add(inputs, "key_left", keyboard_check(vk_left));
ds_map_add(inputs, "key_right", keyboard_check(vk_right));
ds_map_add(inputs, "key_jump", keyboard_check_pressed(vk_space));
ds_map_add(inputs, "w", keyboard_check(ord("W")));
ds_map_add(inputs, "a", keyboard_check(ord("A")));
ds_map_add(inputs, "s", keyboard_check(ord("S")));
ds_map_add(inputs, "d", keyboard_check(ord("D")));
return inputs;
