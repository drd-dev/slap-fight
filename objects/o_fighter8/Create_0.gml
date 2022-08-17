/// @description Initialize the fighter

event_inherited();


playerPow = global.playerPow;
oppPow = 0.09;
keyChangeMin = 0.55;
keyChangeMax = 0.75;



//animation settings
idleSprite = s_fighter8_idle;
slapIdleSprite = s_fighter8_slapIdle;
slapSprite = s_fighter8_slap;


startText = "\nI'm the fastest \nslapper around."
winText = "Good fight.";
loseText = "It's all about speed!";