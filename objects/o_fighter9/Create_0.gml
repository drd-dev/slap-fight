/// @description Initialize the fighter

event_inherited();


playerPow = global.playerPow;
oppPow = 0.11;
keyChangeMin = 0.55;
keyChangeMax = 0.75;



//animation settings
idleSprite = s_fighter9_idle;
slapIdleSprite = s_fighter9_slapIdle;
slapSprite = s_fighter9_slap;


startText = "\nUhh hey...\nI just go to the gym\nhere."
winText = "\nWow, you're good. \nYou should come\nwork for me.";
loseText = "Don't mess with\nthe lord of the\nunderworld.";