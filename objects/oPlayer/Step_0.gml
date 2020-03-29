inputs = get_inputs()

calc_movement(inputs[?"key_left"], inputs[?"key_right"], grav);
refresh_player_jumps(oPlayer, oWall);
jump(oPlayer, inputs[?"key_jump"]);
h_collision(oPlayer, horizontal_speed, oWall);
y_collision(oPlayer, vertical_speed, oWall);