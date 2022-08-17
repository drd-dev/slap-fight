/// @description Initialize the fighter

event_inherited();


playerPow = global.playerPow;
oppPow = 0.15;
keyChangeMin = 0.75;
keyChangeMax = 0.80;



//animation settings
idleSprite = s_fighter6_idle;
slapIdleSprite = s_fighter6_slapIdle;
slapSprite = s_fighter6_slap;


startText = "\nI'll have you know that\nI won the\nslap championships\nlast year!"
winText = "I didn't wanna win\nanyways.";
loseText = "\nHa!\nI knew you\ncouldn't beat me!";