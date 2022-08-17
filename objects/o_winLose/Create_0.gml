/// @description Initialize thing

image_alpha = 0;

audio_stop_sound(fightMusic);


if(global.fightResults == -1){
	sprite = s_lose;
	audio_play_sound(lose, 11, false);
	global.loseNum +=1;
}else{
	audio_play_sound(win, 11, false);
	sprite = s_win;
	global.winNum +=1;
}


alpha = 1;