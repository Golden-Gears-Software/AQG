/// @description Insert description here
// You can write your code in this editor
speed = DefSpeed
count = 0;

image_xscale*=.08
image_yscale*=.08

//Finding line of sight to player
los_x_wall = true
los_y_wall = true

//Checking if thisenemy will have line of sight with player
//for x_wall
if (collision_line(x, y, obj_player.x, obj_player.y, obj_x_wall, false, true))
	los_x_wall = false
//for y_wall
if (collision_line(x, y, obj_player.x, obj_player.y, obj_y_wall, false, true))
	los_y_wall = false
	
//If there is a wall in the way, add/subtract a random angle between 35-55 degree
//to try to bounce the bullet
bounceAimAngle = 0
if (!los_x_wall || !los_y_wall)
	if (irandom_range(0, 1) == 1)
		bounceAimAngle = random_range(35, 55)
	else
		bounceAimAngle = -1 * random_range(35, 55)
	

//Enemy bullets will aim at player with a slight variance
direction = point_direction(x, y, obj_player.x, obj_player.y) + random_range(-11.25, 11.25) + bounceAimAngle