
//create the fight bar
if!instance_exists(o_fightBar){
	instance_create_layer(x, y - 25, "fightUI", o_fightBar);
}

//detect vertical collision
if(place_meeting(x, y + vSpeed, par_collide)){
	while !place_meeting(x,y+sign(vSpeed) ,par_collide){
		y += sign(vSpeed);
	}
	vSpeed = 0;
}

//gravity and jump
if!(place_meeting(x, y+1, par_collide)){
	vSpeed += grav;
}


hSpeed = 0;

//update position
x += hSpeed;
y+= vSpeed;




//controlAnimation
image_speed = 0.5;
sprite_index = s_slapIdle;


if(slapping == true){
	image_speed = 2;
	sprite_index = s_slap;
	
	if(image_index >= image_number -1){
		slapping = false;
	}
}
