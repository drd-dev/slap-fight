/// @description make collision layer invisible



//make collision layer invisible at start of game
layer_set_visible("collisions", false);


if(keyboard_check_pressed(vk_shift) && global.admin == true){
	room_goto_next();
}