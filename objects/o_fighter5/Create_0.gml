/// @description Initialize the fighter

event_inherited();


playerPow = global.playerPow;
oppPow = 0.14;
keyChangeMin = 0.50;
keyChangeMax = 1.00



//animation settings
idleSprite = s_fighter5_idle;
slapIdleSprite = s_fighter5_slapIdle;
slapSprite = s_fighter5_slap;


startText = "\nI've spent years\nmastering the art\nof slapping.\nYou dare face me?"
winText = "You must have\ncheated.";
loseText = "The master is\nvictorious!";