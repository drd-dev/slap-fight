/// @description control the fighter


getInput();

fighterMove();

playerNear = false;

//face the player if near
if(place_meeting(x + 15, y, o_player)){
	image_xscale = 1;
}else if(place_meeting(x - 15, y, o_player)){
	image_xscale = -1;
}


//detect if player is near
var dis = distance_to_object(o_player)


if(dis <= 10){
	playerNear = true;
	
	if(keyInteract && o_player.STATE !=FIGHTSTATE && beaten == false && global.fightResults == 0){
		o_player.STATE = TALKSTATE;
		talking = true;
	}
}

//make player face the fighter
if(o_player.x < x && (o_player.STATE == FIGHTSTATE || o_player.STATE == TALKSTATE)){
	o_player.image_xscale = 1;
}
if(o_player.x > x && (o_player.STATE == FIGHTSTATE || o_player.STATE == TALKSTATE)){
	o_player.image_xscale = -1;
}

if(global.fightStart == true){
	if(slapping == false){
		image_speed = 0.5;
		sprite_index = slapIdleSprite;
	}
	
	var chance = irandom_range(0,10);
	
	if chance == 5{
		slapping = true;
		image_speed = 2;
		sprite_index = slapSprite;
		slapSound();
	}
	
	if(sprite_index == slapSprite && image_index >= image_number-1){
		slapping = false;
	}
	
}else if (o_player.STATE !=FIGHTSTATE){
	image_speed = 0.5;
	sprite_index = idleSprite;
}


//move player correct distance away
if(o_player.STATE == FIGHTSTATE){
	if(o_player.x < x || dis >= 10){
		o_player.x = lerp(o_player.x, x-9, 0.1);
	}
	
	if(o_player.x > x || dis >= 10){
		o_player.x = lerp(o_player.x, x+9, 0.1);
	}
}

