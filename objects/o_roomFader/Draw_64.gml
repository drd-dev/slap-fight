/// @description draw the fade


var x2 = view_get_wport(view_current) * 2;
var y2 = view_get_hport(view_current) * 2;



if(fadeout == false){
	fade += 0.05;
}else{
	fade += -0.05;
}

if(fade >= 0.9 && fadeout == false){
	fadeout = true;
	
	if(Room == "next" && changed == false){
		show_debug_message("went to next room");
		room_goto_next();
		changed = true;
	}else{
		room_goto(Room);
		changed = true;
	}	
}

if(fadeout == true && fade <= 0.1){
	instance_destroy();
}


draw_set_alpha(fade);
draw_rectangle_color(0,0, x2, y2,c_black, c_black,c_black,c_black, false);
draw_set_alpha(1);