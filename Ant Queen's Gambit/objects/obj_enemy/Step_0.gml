/// @description Insert description here
// You can write your code in this editor

//Sprite rotation
image_angle = direction

//Finding line of sight to player
los_x_wall = false
los_y_wall = false

//Checking if thisenemy will have line of sight with player
//for x_wall
if (!collision_line(x, y, obj_player.x, obj_player.y, obj_x_wall, false, true))
	los_x_wall = true
//for y_wall
if (!collision_line(x, y, obj_player.x, obj_player.y, obj_y_wall, false, true))
	los_y_wall = true

//Alert state - If the enemy sees the player, shows that the enemy is alerted and starts shooting
if (los_x_wall && los_y_wall) {
	alertState = true
	alarm[2] = alertDuration
}

//Create an alert tag to let the player know
if (alertState) {
	var alertTag = instance_create_layer(self.x, self.y - 40, "Instances", obj_alert)
	alertTag.creator = id
}

//Shoot repeatedly
if (canShoot && alertState) {
	canShoot = false
	
	instance_create_layer(self.x, self.y, "Instances", obj_enemy_bullet)
	
	alarm[0] = shootCooldown
}