/// @description draw the conversation and interact button


draw_self();


if (playerNear == true && talking == false && o_player.STATE !=FIGHTSTATE && global.fightResults == 0 && beaten == false){
	draw_sprite(s_interact, 0, x, y - 15);
}




//control conversation
if(talking == true && global.fightResults == 0){
	control_conversation(startText);
}


if(global.fightResults == 1){
	o_player.STATE = TALKSTATE;
	global.fightStart = false;
	o_nextRoom.beaten = true;
	beaten = true;
	control_result_conversation(winText);
}

if(global.fightResults == -1){
	o_player.STATE = TALKSTATE;
	global.fightStart = false;
	control_result_conversation(loseText);
}






