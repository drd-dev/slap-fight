/// @description Initialize the fighter

event_inherited();


playerPow = global.playerPow*2;
oppPow = 0.01;
keyChangeMin = 10.00;
keyChangeMax = 15.00;



//animation settings
idleSprite = s_fighter10_idle;
slapIdleSprite = s_fighter10_slapIdle;
slapSprite = s_fighter10_slap;


startText = "\nThat's right. I'm back!\n AND WITH BIGGER HAIR!"
winText = "\nBEATEN AGAIN! \nNOOOOOOOO!";
loseText = "\nI did it! \nI actually won at \nsomething!";