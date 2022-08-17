/// @description Insert description here
// You can write your code in this editor



//if not in fight mode, destroy the bar and needle
if(o_player.STATE != FIGHTSTATE){
	instance_destroy(o_fightNeedle);
	instance_destroy();
}