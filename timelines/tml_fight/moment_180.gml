///@desc destroy the counter and begin fight
instance_destroy(o_countDown);
global.fightStart = true;
audio_play_sound(countdown2,10,false);
audio_play_sound(fight,11,false);


o_fightNeedle.playerPow =  playerPow;
o_fightNeedle.oppPow = oppPow;
o_fightNeedle.keyChangeMin = keyChangeMin;
o_fightNeedle.keyChangeMax = keyChangeMax;

o_fightNeedle.alarm[0] = room_speed * random_range(keyChangeMin,keyChangeMax);