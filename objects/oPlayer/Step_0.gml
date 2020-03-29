key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

calc_movement(key_left, key_right, grav);

player_jump(key_jump);
player_h_collision(horizontal_speed);
player_y_collision(vertical_speed);