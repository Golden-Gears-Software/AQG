/// @description Reset button
// You can write your code in this editor

if keyboard_check(ord("R")) {
	room_goto(1)
	room_restart()
}

if keyboard_check(ord("F")){
	room_goto(WinRoom)
}
if keyboard_check(ord("L")){
	room_goto(LoseRoom)
}
