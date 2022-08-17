/// @description draw the imagew



alpha = lerp(alpha, 0, 0.05);


if(alpha <= 0.01){
	instance_destroy();
}


xx = view_get_wport(view_current);

draw_sprite_ext(sprite,0, xx,100,5,5,0,c_white,alpha);