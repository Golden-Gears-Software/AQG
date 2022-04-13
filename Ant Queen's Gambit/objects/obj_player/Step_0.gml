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
	if (!(image_angle>-5 && image_angle<5)){
		if (image_angle>0){
			image_angle-=5
		}
		else if (image_angle<0){
			image_angle+=5
		}
	}
	
	 if(keyboard_check(vk_right)){
		if (image_angle>-45){
			image_angle-=5
		}
		else if(image_angle<-45){
			image_angle+=5
		}
	
	
	 }
	 }
else if(keyboard_check(vk_down)){
	vspeed += .5
	
	
	
	
	
	if(keyboard_check(vk_left)){
		if (image_angle>135){
			image_angle-=5
		}
		else if(image_angle<135){
			image_angle+=5
		}
		
	}
	else if(keyboard_check(vk_right)){
		image_angle = 225
	}
	else{
		image_angle=180
	}
	
	
	
	
}
else{
	vspeed=0
}


//left and right
if (keyboard_check(vk_left)){
	hspeed-=.5
	if(image_angle<90){
		image_angle+=5
	}
	
	if (keyboard_check(vk_up)){
		if (image_angle<45){
			image_angle+=5
		}
		else if(image_angle>45){
			image_angle-=5
		}
	}
	if(keyboard_check(vk_down)){
		if (image_angle>120){
			image_angle-=5
		}
		else if(image_angle<120){
			image_angle+=5
		}
		
	}
}
else if(keyboard_check(vk_right)){
	hspeed += .5
	if(image_angle>-90){
		image_angle-=5
	}
	
	if (keyboard_check(vk_down)){
		if (image_angle<225){
			image_angle+=5
		}
		
	}
	
	
	
}
else{
	hspeed=0
}


if(canShoot){
	if keyboard_check(vk_space){
	
		canShoot = false
	
		instance_create_layer(self.x, self.y, Room1, obj_player_bullet)
	
		alarm[0] = 20
	}
}