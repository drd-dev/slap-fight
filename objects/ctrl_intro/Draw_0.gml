/// @description Insert description here
// You can write your code in this editor


if(fadeout == true){
	fade = lerp(fade, 0, 0.03);
}else{
	fade = lerp(fade, 1, 0.01);
}


draw_sprite_ext(sprite,0, xx, yy,0.5,0.5,0,c_white,fade);


if(fade >= 0.9 && done == false){
	fadeout = true;
}

if(fadeout == true && fade <= 0.01){
	sprite = s_logo;
	fadeout = false;
	done = true;
	yy = 30;
}


if(fade >= 0.80 && sprite == s_logo){
	draw_set_font(fnt1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	text= "PRESS SPACE";
	draw_text_transformed(xx,yy+ 50,text, 0.25,0.25,0);
	audio_stop_sound(titleMusic);
	
	if(keyboard_check_pressed(vk_space)){
		audio_play_sound(countdown,10,false);
		changeRoom(rm_one)
	}
		
}