key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

calc_movement(key_left, key_right, grav);
refresh_player_jumps(oPlayer, oWall);
jump(oPlayer, key_jump);
h_collision(oPlayer, horizontal_speed, oWall);
y_collision(oPlayer, vertical_speed, oWall);