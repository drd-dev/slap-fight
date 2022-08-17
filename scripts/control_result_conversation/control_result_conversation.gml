///@desc control the conversation
/// @param Text The text to display


getInput();

var Text = argument0;

//draw the conversation box
draw_sprite(s_convoBox,0,x,y - 20);


draw_set_font(fnt1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);


//draw the text
draw_text_transformed(x - 21, y -43, Text, 0.18, 0.18, 0);




//draw end convo
draw_set_halign(fa_center);
draw_text_transformed(x, y -24, "LEAVE", 0.2, 0.2, 0);
draw_rectangle(x-7,y-22.5,x+6,y-22.5,false);
	
if(keyJump || keyEnter){
	global.fightResults = 0;
	audio_play_sound(countdown,10,false);
	audio_resume_sound(ExploreMusic);
	o_player.STATE = MOVESTATE;
}

