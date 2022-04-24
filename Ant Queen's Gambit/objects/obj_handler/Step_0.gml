/// @description Win state check
// You can write your code in this editor

//Check for win state - All enemies dead

if ((room = Room1 || room = Room2) &&
	!instance_exists(obj_enemy))
{
	room_goto_next()
}