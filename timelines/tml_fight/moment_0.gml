///@desc create the countdown counter


audio_pause_sound(ExploreMusic);
instance_create_layer(o_player.x, o_player.y - 55, "fightUI", o_countDown);
audio_play_sound(countdown,10,false);