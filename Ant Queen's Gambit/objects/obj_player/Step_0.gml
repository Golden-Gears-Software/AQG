/// @description Insert description here
// You can write your code in this editor

//make sure player doesn't go too fast
vspeed = clamp(vspeed,-2, 2)
hspeed = clamp(hspeed, -2, 2)
x = clamp(x, 0+self.sprite_width, room_width-self.sprite_width)
y = clamp(y, 0+self.sprite_height, room_height-self.sprite_height)


//up and down
if (keyboard_check(vk_up)){
	vspeed-=.5
}
else if(keyboard_check(vk_down)){
	vspeed += .5
}
else{
	vspeed=0
}


//left and right
if (keyboard_check(vk_left)){
	hspeed-=.5
}
else if(keyboard_check(vk_right)){
	hspeed += .5
}
else{
	hspeed=0
}