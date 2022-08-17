/// @description set timers


creditTime = 2 * room_speed;
fade = 0;
fadeout = false;
sprite = s_credits;
done = false;
xx = 120;
yy = 66;


var num = audio_get_listener_count();
for( var i = 0; i < num; i++;)
   {
   var info = audio_get_listener_info(i);
   audio_set_master_gain(info[? "index"], 0.5);
   ds_map_destroy(info);
   }

audio_play_sound(titleMusic,10,true);