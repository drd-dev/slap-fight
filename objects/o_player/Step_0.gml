/// @description control state machine


//control the state machine

switch(STATE){
	
	case MOVESTATE:
		script = PlayerMove;
		break;
	
	case FIGHTSTATE:
		script = playerFight;
		break;
		
	case TALKSTATE:
		script = playerTalk;
		break;
}

//execute chosen script
script_execute(script);
