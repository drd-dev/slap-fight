///@desc control fighter movement and collision


//gravity and jump
if!(place_meeting(x, y+1, par_collide)){
	vSpeed += global.grav;
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


x+= hSpeed;
y +=vSpeed;