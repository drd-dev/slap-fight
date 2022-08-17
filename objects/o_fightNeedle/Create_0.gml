/// @description Initialize the needle


//set depth
depth = o_fightBar.depth -2;

key = choose ("W", "A","S", "D");


playerPow = 0;
oppPow = 0;
keyChangeMin = 0;
keyChangeMax = 0;

alarm[0] = room_speed * random_range(keyChangeMin,keyChangeMax);