/// @description Insert description here
// You can write your code in this editor

//Sprite rotation
image_angle = direction

//Shoot repeatedly
if canShoot {
	canShoot = false
	
	instance_create_layer(self.x, self.y, "Instances", obj_enemy_bullet)
	
	alarm[0] = shootCooldown
}