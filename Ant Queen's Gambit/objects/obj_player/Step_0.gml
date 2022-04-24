/// @description Insert description here
// You can write your code in this editor

//Movement
//Align player sprite with direction
image_angle = direction

//Converting speed and direction into xspeed and yspeed
xSpd = lengthdir_x(forwardSpd, direction)
ySpd = lengthdir_y(forwardSpd, direction)

//Forward and back
if (keyboard_check(vk_up)){
	if (!place_meeting(x + 2*xSpd, y, obj_x_wall))
		x += xSpd
	if (!place_meeting(x, y + 2*ySpd, obj_x_wall))
		y += ySpd
	image_speed = 1
}
else if(keyboard_check(vk_down)){
	if (!place_meeting(x - 3*xSpd, y, obj_x_wall))
		x -= xSpd
	if (!place_meeting(x, y - 3*ySpd, obj_x_wall))
		y -= ySpd
	image_speed = 1
}
else {
	image_index = 0
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
	
		alarm[0] = 40
	}
}

