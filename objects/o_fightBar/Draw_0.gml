/// @description draw the bar

draw_self();

var bar_x_left = o_fightBar.x - sprite_width/2+1;
var bar_x_right = o_fightBar.x + sprite_width/2-1;
var bar_y_low = o_fightBar.y + 7;


var needle_x = o_fightNeedle.x;
var needle_y_high = o_fightNeedle.y -8;



var leftcol = make_color_rgb(99,199,77);
var rightcol = make_color_rgb(228,59,68);

//draw left color
draw_rectangle_color(bar_x_left,bar_y_low, needle_x, needle_y_high, leftcol, leftcol, leftcol, leftcol, false);
//draw right color
draw_rectangle_color(bar_x_right,bar_y_low, needle_x, needle_y_high, rightcol, rightcol, rightcol, rightcol, false); 
