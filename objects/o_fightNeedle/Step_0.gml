/// @description control needle

getInput();


//check for key press
if (keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(ord(key))){
	
	if(global.fightStart == true) { audio_play_sound(bad, 12, false); }
	x += -oppPow*10;
}else if(keyboard_check_pressed(ord(key)) && global.fightStart == true){
	x += playerPow;
	slapSound();
	o_player.slapping = true;
}else {
	x += -oppPow;
}




var dis = distance_to_point(o_fightBar.x,o_fightBar.y);

//lose detection
if( dis >= 54 && x < o_fightBar.x){
	global.fightResults = -1;
	if !(instance_exists(o_winLose)){
		instance_create_layer(o_fightBar.x, o_fightBar.y - 30, "fightUI", o_winLose); }
	
}


//win detection
if( dis >= 54 && x > o_fightBar.x){
	global.fightResults = 1;
	if !(instance_exists(o_winLose)){
		instance_create_layer(o_fightBar.x, o_fightBar.y - 30, "fightUI", o_winLose); }
}

x = clamp(x, o_fightBar.x - o_fightBar.sprite_width/2, o_fightBar.x + o_fightBar.sprite_width/2)