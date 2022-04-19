/// @description Insert description here
// You can write your code in this editor

//Movement
//Align player sprite with direction
image_angle = direction

//Forward and back
if (keyboard_check(vk_up) && place_free(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction))){
	speed += forwardSpd * 3/20
}
else if(keyboard_check(vk_down) && place_free(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction))){
	speed -= forwardSpd * 3/20
}
else {
	speed = 0
}
//Rotate left and right
if (keyboard_check(vk_left)){
	direction += rotationSpd
}
else if(keyboard_check(vk_right)){
	direction -= rotationSpd
}
//speed limiter
speed = clamp(speed,-forwardSpd, forwardSpd)
//make sure player doesn't go out of the room
x = clamp(x, 0+self.sprite_width, room_width-self.sprite_width)
y = clamp(y, 0+self.sprite_height, room_height-self.sprite_height)


if(canShoot){
	if keyboard_check(vk_space){
	
		canShoot = false
	
		instance_create_layer(self.x, self.y, "Instances", obj_player_bullet)
	
		alarm[0] = 20
	}
}

if (speed == 0){
	image_index = 0
}
else{
	image_speed = .3
}

