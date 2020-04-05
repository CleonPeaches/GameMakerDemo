var inputs = get_inputs()
calc_movement(inputs[?"key_left"], inputs[?"key_right"], grav);
refresh_player_jumps(o_player, o_wall);
jump(o_player, inputs[?"key_jump"]);
h_collision(o_player, o_wall);
y_collision(o_player, o_wall);
animate(o_player, inputs);

interact(o_player);