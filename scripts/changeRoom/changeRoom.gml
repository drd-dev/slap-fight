///@desc fades to the room specified
//@param room the room to go to (next for next room)


var Room = argument0;

var fader = instance_create_depth(0,0,100,o_roomFader);

fader.Room = Room;