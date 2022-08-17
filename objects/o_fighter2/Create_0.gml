/// @description Initialize the fighter

event_inherited();


playerPow = global.playerPow;
oppPow = 0.15;
keyChangeMin = 1;
keyChangeMax = 1.5;



//animation settings
idleSprite = s_fighter2_idle;
slapIdleSprite = s_fighter2_slapIdle;
slapSprite = s_fighter2_slap;


startText = "Ha!\nYou think you\ncan beat me?"
winText = "Ok...\nMaybe you can beat me.";
loseText = "I am unstoppable!";