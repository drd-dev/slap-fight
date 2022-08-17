/// @description Initialize the fighter


image_speed = 0.5;
image_xscale = -1;
beaten = false;

vSpeed = 0;
hSpeed = 0;
talking = false;
selected = -1;
slapping = false;


playerPow = global.playerPow;
oppPow = 0.1;
keyChangeMin = 1;
keyChangeMax = 2;



//animation settings
idleSprite = s_fighter1_idle;
slapIdleSprite = s_fighter1_slapIdle;
slapSprite = s_fighter1_slap;


startText = "You think you can beat \nme in a slap fight bro?"
winText = "Ouch! \nOkay stop you win!...";
loseText = "Haha! try again \nlittle man.";