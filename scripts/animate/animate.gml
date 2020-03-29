/// animate(entity_object, inputs)
/// @description animate(entity_object, inputs)
/// @param player_object
/// @param inputs

entity_object = argument0;
inputs = argument1;

if(inputs[?"a"] and inputs[?"d"]) entity_object.sprite_index = s_player_reach_left_and_right;
else if(inputs[?"w"] and inputs[?"s"]) entity_object.sprite_index = s_player_reach_up_and_down;
else if(inputs[?"w"]) entity_object.sprite_index = s_player_reach_up;
else if(inputs[?"a"]) entity_object.sprite_index = s_player_reach_left;
else if(inputs[?"s"]) entity_object.sprite_index = s_player_reach_down;
else if(inputs[?"d"]) entity_object.sprite_index = s_player_reach_right;
else entity_object.sprite_index = s_player;