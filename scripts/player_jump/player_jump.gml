/// player_jump(key_jump)
/// @description player_jump(key_jump)
/// @param key_jump

key_jump = argument0;

if(oPlayer.jump_count > 0 and key_jump)
{
	vertical_speed = -6;
	oPlayer.jump_count -= 1;
}