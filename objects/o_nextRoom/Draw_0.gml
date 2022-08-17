/// @description draw the E

getInput();

if(beaten == true && place_meeting(x,y,o_player)){
	draw_sprite(s_interact,0,x+5,y-5);
	
	
	if(keyInteract){
		changeRoom("next");
	}	
}