///@desc control the conversation
/// @param Text The text to display


getInput();

var startText = argument0;

//draw the conversation box
draw_sprite(s_convoBox,0,x,y - 20);


draw_set_font(fnt1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);


//draw the text
draw_text_transformed(x - 21, y -42, startText, 0.18, 0.18, 0);




//draw yes and no
draw_set_halign(fa_center);
draw_text_transformed(x-16, y -24, "FIGHT", 0.2, 0.2, 0);
draw_text_transformed(x+16, y -24, "LEAVE", 0.2, 0.2, 0);

//update the selected response
if(keyLeftPressed || keyRightPressed){
	selected = selected * -1;
	audio_play_sound(countdown, 5, false);
}


//yes selection
if(selected == -1){
	draw_rectangle(x-22,y-22.5,x-11,y-22.5,false);
	
	if(keyJump || keyEnter){
		talking = false;
		sprite_index = slapIdleSprite;
		startFight(playerPow, oppPow, keyChangeMin, keyChangeMax);
	}
}


//no selection
if(selected == 1){
	draw_rectangle(x+20.8,y-22.5,x+9.8,y-22.5,false);
	
	if(keyJump || keyEnter){
		talking = false;
		audio_play_sound(countdown, 5, false);
		o_player.STATE = MOVESTATE;
		selected = -1;
	}
}
