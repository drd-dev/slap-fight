///@desc starts and controls the fight
///@param playerPow player power per slap
///@param oppPow opponent power per slap
///@param keyChangeMin minimum time for a key change
///@param keyChangeMax maximum time for a key change

playerPow = argument0;
oppPow = argument1;
keyChangeMin = argument2;
keyChangeMax = argument3;

o_player.STATE = FIGHTSTATE;

if (global.fightStart == false){
	timeline_position = 0;
	timeline_loop = false;
	timeline_index = tml_fight;
	timeline_running = true;
}


