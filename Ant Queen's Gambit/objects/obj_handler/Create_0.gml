/// @description Music handler
// You can write your code in this editor
if (room == InstructionsRoom || room == Room1)
	audio_stop_all()
	
if ((room == Room1 || room == Room2) && !audio_is_playing(bg_music))
	audio_play_sound(bg_music,10,true)