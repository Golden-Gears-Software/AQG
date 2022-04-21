/// @description Insert description here
// You can write your code in this editor
speed = DefSpeed
count = 0;
rand = random_range(-11.25, 11.25)

image_xscale*=.08
image_yscale*=.08
//direction = obj_enemy.direction
direction = point_direction(x, y, obj_player.x, obj_player.y) + rand