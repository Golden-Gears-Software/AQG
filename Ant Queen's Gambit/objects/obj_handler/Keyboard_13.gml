/// @description Cheat codes
// You can write your code in this editor

// Enter + R - Restart current room
if keyboard_check(ord("R"))
	room_restart()

// Enter + I - Go to instructions room
if keyboard_check(ord("I"))
	room_goto(InstructionsRoom)

// Enter + 1 - Go to room 1
if keyboard_check(ord("1"))
	room_goto(Room1)

// Enter + 2 - Go to room 2
if keyboard_check(ord("2"))
	room_goto(Room2)

// Enter + F - Go to win room
if keyboard_check(ord("F"))
	room_goto(WinRoom)

// Enter + L - Go to lose room
if keyboard_check(ord("L"))
	room_goto(LoseRoom)