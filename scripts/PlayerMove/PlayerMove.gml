///@desc control player movmement


//state Machine

//get input
getInput();
var hinput = keyRight - keyLeft;

//update hspeed
hSpeed = lerp(hSpeed, maxSpeed*hinput, acceleration);


//gravity and jump
if!(place_meeting(x, y+1, par_collide)){
	vSpeed += global.grav;
}else if(keyJump){
	vSpeed = -jumpHeight;
}


//detect horizontal collision
if(place_meeting(x + hSpeed, y, par_collide)){
	while !place_meeting(x+sign(hSpeed),y ,par_collide){
		x += sign(hSpeed);
	}
	hSpeed = 0;
}


//detect vertical collision
if(place_meeting(x, y + vSpeed, par_collide)){
	while !place_meeting(x,y+sign(vSpeed) ,par_collide){
		y += sign(vSpeed);
	}
	vSpeed = 0;
}




//update position
x += hSpeed;
y+= vSpeed;


//control animation

switch(hinput){

	case 0:
		image_speed = 0.5;
		sprite_index = s_playerIdle;
		break;
		
	case 1:
		image_speed = hSpeed/2;
		sprite_index = s_playerRun;
		image_xscale = 1;
		break;


	case -1:
		image_speed = abs(hSpeed/2);
		sprite_index = s_playerRun;
		image_xscale = -1;
		break;


}



